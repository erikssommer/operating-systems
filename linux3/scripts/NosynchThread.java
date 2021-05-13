// Kompileres med  javac NosynchThread.java
// Run: java NosynchThread

import java.lang.Thread;

class SaldoThread extends Thread {
    static int MAX = 1000000; // En million
    static int count = 0;
    public static int saldo; // Felles variable, gir race condition
    int id;

    SaldoThread() {
        count++;
        id = count;
    }

    public void run() {
        System.out.println("Traad nr. " + id + ", med prioritet " + getPriority() + " starter");
        updateSaldo();
    }

    public synchronized void updateSaldo() {
        int i;
        if (id == 1) {
            for (i = 1; i < MAX; i++) {
                saldo++;
            }
        } else {
            for (i = 1; i < MAX; i++) {
                saldo--;
            }
        }
        System.out.println("Traad nr. " + id + " ferdig. Saldo: " + saldo);
    }
}

public class NosynchThread extends Thread {
    public static void main(String args[]) {
        int i;
        System.out.println("Starter to traader!");

        SaldoThread s1 = new SaldoThread();
        SaldoThread s2 = new SaldoThread();
        s1.start();
        s2.start();

        try {
            s1.join();
        } catch (InterruptedException e) {
        }
        try {
            s2.join();
        } catch (InterruptedException e) {
        }

        System.out.println("Endelig total saldo: " + SaldoThread.saldo);
    }
}