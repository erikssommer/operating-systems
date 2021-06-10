.globl fibo
# C-signatur:int fibo ()

fibo:                # Standard start av procedure/metode

mov   $46, %rcx      # Tallet i rekken som skal regnes ut, minimum 3
mov   $1, %rbx       # 1 -> rbx, første fibonacci-tall
mov   $1, %rax       # 1 -> rax, siste tall så langt i fibonacci-rekken
mov   $2, %rdx       # 2 -> rdx, teller, har allerde de to første

# løkke
start:          # label
mov %rax, %r8   # Kopierer verdien av rax til r8 (r8-r15) er ekstra 64 bits registere
add %rbx, %rax  # rax = rax + rbx, rax er nå siste tall i rekken
mov %r8, %rbx   # rbx får den lagrede verdien fra r8 og er nest siste tall igjen
inc %rdx

cmp  %rcx, %rdx # compare, har teller rdx blitt lik max?
jne  start      # Jump Not Equal til start:

ret  # Verdien i rax returneres