Experimental Syslog-to-Splunk bridge to handle logging for the Shibboleth IdP

Several environment variables must be set prior to starting containers:
* ```SPLUNK_DEFAULT_HOSTNAME``` - The hostname to attach to Splunk logs (searchable via 'host=...')
* ```SPLUNK_PASSWORD``` - Password used to connect to the UF REST interface (not really used here, but required for the UF to start)
* ```SPLUNK_PASS4SYMMKEY``` - Password used for communication between Splunk nodes
* ```SPLUNK_SERVER``` - Comma-separated list of one or more Splunk servers (used in outputs.conf)

I typically place these in a .env file, and then run ```docker-compose up -d```.
