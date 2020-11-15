# NSO base image
FROM centos:7


# Install deps
COPY sources.list /etc/apt/sources.list
RUN yum update -y; \
    yum install -y epel-release; \
    yum install jre-11 -y; \
    yum install perl fontconfig python36 python36-pip python-paramiko python-lxml python-requests -y; \
    yum install -y supervisor
     
     


