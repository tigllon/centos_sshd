#!/usr/bin/bash

if [[ !  -d  "/root/.ssh" ]]; then
mkdir /root/.ssh/ ;
if [[ ! -z "${public_key}" ]]; then
echo $public_key >> /root/.ssh/authorized_keys
else 
read public_key ;
echo $public_key >> /root/.ssh/authorized_keys
fi
fi

/usr/sbin/sshd -D
