FROM ubuntu
COPY prime.c prime.c
RUN apt update -y
RUN apt install -y build-essential
RUN apt install -y time
RUN gcc -O prime.c
RUN time ./a.out > res.txt
