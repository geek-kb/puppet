#!/bin/bash
HOSTNAME=$(hostname)
echo "hostname=$(hostname)"
echo "numfiles=$(ls -1 /root | wc -l)"

pcn=$(hostname | tr -dc '0-9')
if [[ $? -eq 0 ]]; then
echo "puppetclientnumber=$pcn"
fi
echo "user=$(whoami)"
