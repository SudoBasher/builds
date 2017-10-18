#!/bin/bash
## run as your regular user
## run these commands one by one

mkdir /home/${USER}/.ssh
ssh-keygen -b 4096 -t rsa -f /home/${USER}/.ssh/id_rsa -C ${HOSTNAME}
chmod 700 /home/${USER}/.ssh/
chmod 400 /home/${USER}/.ssh/id_rsa
