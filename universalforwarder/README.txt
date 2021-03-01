For a Splunk Universal Forwarder default install, the default $SPLUNK_HOME path is /opt/splunkforwarder/.
The conf files (inputs.conf, outputs.conf, server.conf, and web.conf) should go in the $SPLUNK_HOME/etc/system/local directory.
The file inputs.conf needs to be modified.  Be sure to enter your full fqdn for the server after the [default] stanza.  Add any additional files to be sent to Splunk here as well.
Restart the Splunk service after changes are made to the configuration files for them to take effect:  "$SPLUNK_HOME/bin/splunk restart"
