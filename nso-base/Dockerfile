# NSO base image
FROM ubuntu:latest

ARG NSOVER

# Install deps
COPY sources.list /etc/apt/sources.list
RUN apt-get update;\ 
    apt-get install -y openssh-client default-jre-headless; \
    apt-get -y clean autoclean;\
    apt-get -y autoremove;\
    apt-get -y install python;\
    apt-get -y install python-pip;\
    pip install pytz;\
    apt-get -y install ant;\
    apt-get -y install python-paramiko;\
    apt-get -y install nfs-common;\
    apt-get -y install libxml2-utils;\
    apt-get -y install make;\
    apt-get -y install make-guile;\
    apt-get -y install xsltproc;\
    apt-get -y install autoconf;\
    apt-get -y install gcc;\
    apt-get -y install erlang-base;\
    apt-get -y install erlang-base-hipe;\
    apt-get -y install erlang erlang-dev;\
    apt-get -y  install erlang-nox;\ 
    rm -rf /tmp/* /var/tmp/* /var/lib/{apt,dpkg,cache,log}/ 


