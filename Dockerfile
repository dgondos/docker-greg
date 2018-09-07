FROM alpine:latest
MAINTAINER William Weiskopf <william@weiskopf.me>

RUN apk add --no-cache \
    ca-certificates \
    python3 \
    busybox-suid
RUN python3 -m ensurepip
RUN pip3 install greg stagger

COPY crontab /var/spool/cron/crontabs/greg
COPY greg.conf /home/greg/.config/greg/greg.conf

RUN addgroup -S -g 1000 greg
RUN adduser -S -u 1000 -G greg greg

ENTRYPOINT []

CMD ["crond", "-l", "0", "-f", "-L", "/var/log/cron"]

