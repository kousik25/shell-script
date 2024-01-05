#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage <br>"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

#echo "$message" | mail -s "High Disk Usage" kousikdittakavi1@gmail.com

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "kousikdittakavi1@gmail.com" "ALERT High Disk Usage"