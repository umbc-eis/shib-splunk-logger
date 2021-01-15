FROM python:3-alpine
RUN apk add rsyslog
ADD etc /etc/
ADD logger.py /opt
CMD [ "/usr/sbin/rsyslogd", "-n" ]
