FROM ubuntu
COPY prime.c prime.c
COPY run.sh run.sh
RUN apt update -y
RUN apt install -y build-essential
RUN apt install -y time
RUN gcc -O prime.c
RUN chmod 744 run.sh
CMD ["./run.sh"]
