#!/bin/bash
#run at start to connect to VPN server
dhclient vpn_vpn
sleep 5
ip route del default via 192.168.0.1
sleep 2
ip route add default via 192.168.30.1 dev vpn_vpn
sleep 1
ip route add 45.67.230.96 via 192.168.0.1 dev eth0


echo "nameserver 8.8.8.8" > /etc/resolv.conf
