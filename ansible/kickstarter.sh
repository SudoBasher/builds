#!/bin/bash
## run as root ($ sudo su -)
## run these commands one by one

$ sudo su -
$ ssh-keygen -b 4096 -t rsa -f /home/user/.ssh/id_rsa -C $HOSTNAME
$ chmod 700 /home/user/.ssh/
$ chown -R user:user /home/user/.ssh
