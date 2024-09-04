ipaddr=$(ip addr | awk '/^[0-9]+:/ { iface=$2 } $1 == "inet" { split($2, ip, "/"); print iface, ip[1] }')

echo $ipaddr
