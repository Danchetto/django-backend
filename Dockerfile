FROM ubuntu:16.04

MAINTAINER Daniil Tuchin

# Update packages
RUN apt-get -y update

RUN apt-get install -y python3
RUN apt-get install libpq-dev -y
RUN apt-get install build-essential -y
RUN apt-get install -y python3-pip

EXPOSE 5000

RUN pip3 install Django

ADD . /db_technopark
WORKDIR /db_technopark

ENTRYPOINT ["./start.sh"]

