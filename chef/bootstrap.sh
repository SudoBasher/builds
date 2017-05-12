#!/bin/bash
# only run this bootstrap.sh script once

# install os w/ username "user"
mkdir -p /home/user/Downloads/Packages/
wget https://packages.chef.io/files/stable/chef/12.19.36/ubuntu/16.04/chef_12.19.36-1_amd64.deb -O /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
sudo dpkg -i /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
sudo su user
sudo echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
# now run chef using bootstrap.rb