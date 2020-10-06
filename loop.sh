#!/bin/bash

file=$1
while IFS= read -r p || [ -n "$p" ]
do

status=$(ssh -no BatchMode=yes -o ConnectTimeout=8 root@$p echo ok 2>&1)
echo $status
if [[ $status != "ok" ]] ; then
  echo $p >> /root/offenseForTunnel/ssh.txt
fi
status=''
done < "$file"

bash /root/offenseForTunnel/csvGenerator.sh /root/offenseForTunnel/ssh.txt
