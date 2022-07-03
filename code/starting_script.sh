#!/usr/bin/bash
# Check if directory is available or not
if [[ !  -d  "/root/.ssh" ]]; then
     mkdir /root/.ssh/ ;
# Check if environment variables are set or not
if [[ ! -z "${public_key}" ]]; then
     echo $public_key >> /root/.ssh/authorized_keys;
else 
     echo "OOPS!! You  have to pass the public key too ( See README )";
     exit;
fi
fi

/usr/sbin/sshd -D
