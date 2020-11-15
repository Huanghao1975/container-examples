# NSO base image
FROM centos:7

ARG WAEVER

# Install deps
COPY sources.list /etc/apt/sources.list
RUN yum update -y; \
    yum install -y epel-release; \
    yum install jre-11 -y; \
    yum install perl fontconfig python36 python36-pip python-paramiko python-lxml python-requests -y; \
    yum install -y supervisor
COPY WAE-Linux-v$WAEVER.signed.bin /tmp/wae
COPY wae.ini /wae.ini
RUN  rm /etc/supervisord.conf
COPY supervisord.conf /etc/supervisord.conf
RUN  cd tmp/; \
     mkdir /home/wae; \
     useradd -U --home-dir /home/wae wae; \
     echo ciscowae | passwd wae; \
     chmod +x /tmp/wae; \
     /tmp/wae; \
     rm /tmp/wae; \
     chmod +x wae-linux-v$WAEVER.bin; \
     cd /home/wae; \
     /tmp/wae-linux-v$WAEVER.bin wae; \
     source wae/waerc; \
     wae-setup --dest wae-run --dev; \
     mkdir -p var/supervisor; \
     mkdir -p var/log; \
     ln -sf /home/wae/wae-run/wae.ini /etc/supervisord.d/wae.ini; \
     rm /tmp/wae-linux-v$WAEVER.bin; \
     chown -R wae:wae /home/wae
     
     


