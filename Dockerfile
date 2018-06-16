# vim:set ft=dockerfile:
FROM gliderlabs/alpine:edge

MAINTAINER Björn Engel<justcoke@gmail.com>

RUN apk add --update less curl sngrep ngrep \
      asterisk asterisk-curl asterisk-speex \
&&  rm -rf /usr/lib/asterisk/modules/*pjsip* \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

# start asterisk so it creates missing folders and initializes astdb
RUN asterisk && sleep 5

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/asterisk", "-vvvdddf", "-T", "-W", "-U", "root", "-p"]


