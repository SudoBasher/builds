#!/bin/bash
mkdir -p /home/user/Downloads/Packages/
mkdir -p /home/user/Development/Github/sudobasher/builds/chef/
wget https://packages.chef.io/files/stable/chef/12.19.36/ubuntu/16.04/chef_12.19.36-1_amd64.deb -O /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
sudo dpkg -i /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
wget https://raw.githubusercontent.com/SudoBasher/builds/master/chef/ubuntu-development-workstation.rb -O /home/user/Development/Github/sudobasher/builds/chef/ubuntu-development-workstation.rb 
sudo chef-client --local-mode /home/user/Development/Github/sudobasher/builds/chef/ubuntu-development-workstation.rb
