FROM debian:latest
MAINTAINER Nicoroud

ENV DOCKERFILE_UPDATED 2018-10-05

RUN apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E && \ 

RUN apt-get update && apt-get upgrade -y
