FROM splunk/universalforwarder:latest
ADD --chown=splunk local /tmp/local/
ADD entrypoint.sh /usr/local/sbin/entrypoint.sh
ENTRYPOINT [ "/usr/local/sbin/entrypoint.sh", "start-service" ]
