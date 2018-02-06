#!/bin/bash

# Get relevant 10.24.X.* IP + network subnet.
# This method is only valid for /24 subnets
system_ip=$(hostname -i || ip addr | grep 10.24. | awk '{print $2}' | sed 's=/.*==g')
network_addr=$(awk -F'.' '{print $1"."$2"."$3}' <<< $system_ip)
#system_ip=$(/sbin/ifconfig | grep "inet addr:10.24" | awk '{print $2}' | cut -c 6-)
#network_addr=$(rev <<< $system_ip | cut -c 4- | rev)

isilon_server="#NA"
vlan_name="#NA"

case "$network_addr" in
	"10.24.24") isilon_server="isilonnj01-p39it.eyedcny.local"
				vlan_name="p39it"
				;;
	"10.24.25") isilon_server="isilonnj01-rtb-web.eyedcny.local"
				vlan_name="rtb-web"
				;;
	"10.24.26") isilon_server="isilonnj01-rtb-lan.eyedcny.local"
				vlan_name="rtb-lan"
				;;
	"10.24.27") isilon_server="isilonnj01-ver-web.eyedcny.local"
				vlan_name="ver-web"
				;;
	"10.24.28") isilon_server="isilonnj01-ver-lan.eyedcny.local"
				vlan_name="ver-lan"
				;;
	*) ;;
esac

echo isilon_server=$isilon_server
echo vlan_name=$vlan_name
