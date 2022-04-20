#!/bin/sh
#
# Can't directly copy these to /opt/splunkforwarder/etc in the Dockerfile, because the Ansible
# playbook will overwrite it when it populates the baked-in Docker volume for the first time.
#
local_dir=/opt/splunkforwarder-etc/system/local
/bin/sudo -u splunk -- sh -s <<EOF
if /bin/grep -q _SPLUNK_DEFAULT_HOSTNAME_ ${local_dir}/inputs.conf; then
    sed -i "s/_SPLUNK_DEFAULT_HOSTNAME_/${SPLUNK_DEFAULT_HOSTNAME}/g" ${local_dir}/inputs.conf
    sed -i "s/_SPLUNK_PASS4SYMMKEY_/${SPLUNK_PASS4SYMKEY}/g" ${local_dir}/server.conf
    sed -i "s/_SPLUNK_SERVER_/${SPLUNK_SERVER}/g" ${local_dir}/outputs.conf
fi
EOF
exec /sbin/entrypoint.sh $@
exit 1
