#!/bin/sh
set -x
export DEBIAN_FRONTEND=noninteractive
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p /etc/sysctl.conf
#systemctl restart networking.service
apt-get update
apt-get install bird vim tcpdump -y
/bin/sh /vagrant/scripts/$(hostname).sh > /tmp/log 2>&1
