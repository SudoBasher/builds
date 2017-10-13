#!/bin/bash
## run as root

## single line commands

ssh-keygen -b 4096 -t rsa -f /home/user/.ssh/id_rsa -C $HOSTNAME

## batch commands

chmod 700 /home/user/.ssh/
chown -R user:user /home/user/.ssh
