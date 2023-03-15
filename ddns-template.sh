#!/bin/sh


interface="vnet0"
ip_filter="prefixlen 64"

ip=`ifconfig ${interface} | grep inet6 | grep '${ip_filter}' | cut -d ' ' -f2`

domain="xx.yy.zz"
pass=""

# ipv4
#curl -k -4 "https://$domain:$pass@dyn.dns.he.net/nic/update?hostname=$domain&myip=$ip"     #ipv4
# ipv6
curl -k -6 "https://$domain:$pass@dyn.dns.he.net/nic/update?hostname=$domain&myip=$ip"     #ipv6

