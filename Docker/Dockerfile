FROM ubuntu
RUN apt-get --fix-missing -y update
RUN apt update -y
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime  && echo $TZ > /etc/timezone
RUN apt-get install -y build-essential
RUN apt-get install -y default-jdk
RUN apt-get install -y python3
RUN apt-get install -y git
RUN git clone https://github.com/haugerud/sum.git
RUN apt install -y jed
