#! /bin/bash 

set -x

netstat -i

#Jumbo frame
ifconfig eth0 mtu 9000 up

#permanently
echo 'MTU 9000' >> /etc/network/interfaces
systemctl restart network

