# NSO base image
FROM hhyq/nso-test:base

ARG NSOVER

# Install deps
COPY nso-$NSOVER.linux.x86_64.installer.bin /tmp/nso

RUN /tmp/nso /root/nso; \
    echo '. ~/nso/ncsrc' >> /root/.bashrc; \
    rm -rf /tmp/* /var/tmp/* /var/lib/{apt,dpkg,cache,log}/ 

EXPOSE 8080 830 2022 2023 4569

COPY run-nso.sh /root/.
ENTRYPOINT ["/root/run-nso.sh"]
