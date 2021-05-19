FROM alpine:3.12

RUN apk add --no-cache \
        bash \
        ca-certificates \
        libsasl \
        mailx \
        postfix \
        rsyslog \
        runit \
        bind-tools \
        postfix-policyd-spf-perl

COPY service /etc/service
COPY usr/sbin/runit_bootstrap /usr/sbin/runit_bootstrap
COPY etc/rsyslog.conf /etc/rsyslog.conf

STOPSIGNAL SIGKILL

ENTRYPOINT ["/usr/sbin/runit_bootstrap"]
