#!/bin/bash
## run as root ($ sudo su -)

## to use this:
## $ sudo chmod +x bootstrap.sh
## $ . bootstrap.sh

export USERNAME=user ## set this to your login username
mkdir -p /home/${USERNAME}/Downloads/Packages/
sudo chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}/Downloads/Packages/
mkdir -p /home/${USERNAME}/Development/github/sudobasher/builds.local/ansible/
apt -y install git
git clone http://git@github.com/sudobasher/builds/ /home/${USERNAME}/Development/github/sudobasher/builds.local/
sudo chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}/Development/
apt -y update
apt -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt -y update
apt -y install ansible
ansible-playbook /home/${USERNAME}/Development/github/sudobasher/builds.local/ansible/ubuntu-development-workstation.yml 
