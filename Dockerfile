FROM ubuntu:latest

RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean

RUN apt-get install -y python3 wget zip unzip
RUN apt-get -y install python3-pip
RUN pip3 install requests
RUN pip3 install pyyaml

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./hpc.py /usr/src/app