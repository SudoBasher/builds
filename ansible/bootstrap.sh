#!/bin/bash
mkdir -p /home/user/Downloads/Packages/
mkdir -p /home/user/Development/Github/sudobasher/builds/ansible/
wget https://raw.githubusercontent.com/SudoBasher/builds/master/ansible/ubuntu-development-workstation.yml -O /home/user/Development/Github/sudobasher/builds/ansible/ubuntu-development-workstation.yml
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible
# ansible-playbook
