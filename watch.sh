#!/bin/bash

username=`whoami`
site="http://www.singerco.com/accessories/detail/2093/darning-embroidery-foot"
look_for="/images/btn_addtocart.gif"
subject="Order the darn foot"
body="Order the foot from $site"

# -s makes curl silent. Pipe HTML to grep, count the finds

count=`curl -s $site | grep $look_for | wc -l`

if [ $count -gt 0 ]
then
        `echo "$body" | mail -u $username "$subject"`
fi
