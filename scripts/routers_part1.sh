#!/bin/sh
set -x
export DEBIAN_FRONTEND=noninteractive
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p /etc/sysctl.conf
#systemctl restart networking.service
apt-get update
apt-get install vim tcpdump -y
echo $s
if [  "$s" -eq 2 ] 
then
	/bin/sh /vagrant/scripts/$(hostname).sh > /tmp/log 2>&1
else 
	apt-get install bird -y
	cp /vagrant/scripts/bird.conf /etc/bird/bird.conf
	sed -i -e "s/A.B.C.D/`hostname -I | awk '{print $NF}'`/g"  /etc/bird/bird.conf 
fi

