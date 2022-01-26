#!/usr/bin/env bash

# Set ownership correctly; this handles the case where the volumes
# were attached to an earlier version of the container, with a
# different uid for the netdata user.
chown -R netdata:netdata /etc/netdata/
chown -R netdata:netdata /var/cache/netdata/
chown -R netdata:netdata /var/lib/netdata

HOSTNAME="$RESIN_DEVICE_NAME_AT_INIT"
# Doesn't work. Hostname in netdata is still a random number
echo $HOSTNAME > /etc/hostname
export HOSTNAME

# Opt out of usage gathering
touch /etc/netdata/.opt-out-from-anonymous-statistics

exec /usr/sbin/run.sh