#!/bin/bash

username=`whoami`
site=""
look_for=""
subject=""
body=""

# -s makes curl silent. Pipe HTML to grep, count the finds

count=`curl -s $site | grep $look_for | wc -l`

if [ $count -gt 0 ]
then
        `echo "$body" | mail -s "$subject" $username`
fi
