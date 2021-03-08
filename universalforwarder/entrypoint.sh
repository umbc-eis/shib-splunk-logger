#!/bin/sh
#
# Need to jump through some hoops here, because the base image creates a volume
# for /opt/splunkforwarder/etc - so we can't ADD files there in the Dockerfile
#
if [ -d /tmp/local ]; then
   /bin/sudo -u splunk cp -p /tmp/local/* /opt/splunkforwarder/etc/system/local
   /bin/sudo -u splunk rm -rf /tmp/local
fi
exec /sbin/entrypoint.sh $@
exit 1
