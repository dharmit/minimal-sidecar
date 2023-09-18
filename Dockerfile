FROM registry.access.redhat.com/ubi9/ubi-minimal

COPY sidecar /opt/sidecar
WORKDIR /opt

CMD ./sidecar