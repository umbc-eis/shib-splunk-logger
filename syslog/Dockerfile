FROM python:3-alpine
RUN apk add rsyslog
ADD rsyslog.conf /etc
CMD [ "/usr/sbin/rsyslogd", "-n" ]
