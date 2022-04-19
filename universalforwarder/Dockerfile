FROM splunk/universalforwarder:latest
COPY --chown=splunk local/* /opt/splunkforwarder-etc/system/local/
ADD entrypoint.sh /usr/local/sbin/entrypoint.sh
ENTRYPOINT [ "/usr/local/sbin/entrypoint.sh", "start-service" ]
