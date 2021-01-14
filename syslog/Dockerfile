FROM python:3-alpine
RUN apk add rsyslog
ADD rsyslog.conf /etc
ADD logger.py /opt
CMD [ "/usr/sbin/rsyslogd", "-n" ]
