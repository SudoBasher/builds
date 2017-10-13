#!/bin/bash
## run as root

mkdir -p /home/user/Downloads/Packages/
sudo chown -R user:user /home/user/Downloads/Packages/
mkdir -p /home/user/Development/github/sudobasher/builds.local/ansible/
wget https://raw.githubusercontent.com/SudoBasher/builds.local/master/ansible/ubuntu-development-workstation.yml -O /home/user/Development/github/sudobasher/builds.local/ansible/ubuntu-development-workstation.yml
sudo chown -R user:user /home/user/Development/
apt-get -y update
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get -y update
apt-get -y install ansible
ansible-playbook /home/user/Development/github/sudobasher/builds.local/ansible/ubuntu-development-workstation.yml 