#!/bin/bash
mkdir -p /home/user/Downloads/Packages/
wget https://packages.chef.io/files/stable/chef/12.19.36/ubuntu/16.04/chef_12.19.36-1_amd64.deb /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
sudo dpkg -i /home/user/Downloads/Packages/chef_12.19.36-1_amd64.deb
