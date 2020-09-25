FROM centos:latest

ARG ARCH="amd64"
ARG OS="linux"

RUN mkdir -p /test && \
    chown -R nobody:nobody /test

USER       nobody
VOLUME     [ "/test" ]
WORKDIR    /test
ENTRYPOINT [ "/bin/sleep" ]
CMD        [ "infinity" ]

