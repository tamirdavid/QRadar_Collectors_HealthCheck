#!/bin/bash



file=$1
while IFS= read -r p || [ -n "$p" ]
do

 echo " name: \"" tunnel between $p and Console is down\""; category: \""TUNNEL\""; source ip: 10.10.11.13 ; destination ip: $p" >> /root/offenseForTunnel/LOGS.csv 

done < "$file"

if [ -s /root/offenseForTunnel/LOGS.csv ]
then
    cd /opt/qradar/bin/
    timeout 60 ./logrun.pl -u 10.10.10.10 -f /root/offenseForTunnel/LOGS.csv -l -v 1
    >/root/offenseForTunnel/ssh.txt
    >/root/offenseForTunnel/LOGS.csv
else
    echo "LOGS.csv is empty"
fi
