#!/bin/bash

ttl=$(ping -c1 $1 | grep 'ttl' | awk '{print $6}' | cut -c5-7 )

if [ $ttl -ge 0 -a $ttl -lt 65 ] ;
then
   echo 'Linux'
elif [ $ttl -ge 64 -a $ttl -lt 129 ];then
   echo 'Windows'
fi




