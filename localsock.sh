#!/bin/bash
# By hexxed
##############################
# Creates a socks tunnle to  #
# target remote host         #
# on the specified           #
# port                       #
##############################


local_port=$1
host_name=$2
port=$3

if [ -z $1 ]; then
    echo -e 'usage: localsock.sh local_port remote_host remote_port\n\nCreates a tunnel to remote_host at remote_port on local_port'
    exit
else
    ssh -fND localhost:$local_port  root@$host_name -p $port
    exit
fi
