FROM debian:latest
MAINTAINER Nicoroud

# Environment
ENV DOCKERFILE_UPDATED 2018-10-05
ENV DEBIAN_FRONTEND noninteractive

# Install x2go server
ADD x2go.list /etc/apt/sources.list.d/ && \
apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E && \
apt-get update && \
apt-get install -y x2go-keyring && \
apt-get update && \
apt-get upgrade -y
RUN apt-get install -y x2goserver x2goserver-xsession

# Install libreoffice, firefox...
RUN apt-get install -y firefox
