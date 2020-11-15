# NS base image
FROM h-net.cloudns.asia:15000/centos:7

ARG WAEVER

COPY wae-linux-v$WAEVER.bin /tmp/wae
COPY wae.ini /wae.ini
RUN  rm /etc/supervisord.conf
COPY supervisord.conf /etc/supervisord.conf
RUN  cd tmp/; \
     mkdir /home/wae; \
     useradd -U --home-dir /home/wae wae; \
     echo wae:cisco123cisco |chpasswd; \
     chmod +x /tmp/wae; \
     cd /home/wae; \
     /tmp/wae wae; \
     source wae/waerc; \
     wae-setup --dest wae-run --dev; \
     mkdir -p var/supervisor; \
     mkdir -p var/log; \
     ln -sf /home/wae/wae-run/wae.ini /etc/supervisord.d/wae.ini; \
     rm /tmp/wae; \
     chown -R wae:wae /home/wae
     
     


