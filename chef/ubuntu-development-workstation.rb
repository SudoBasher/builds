# install os

# execute 'Remove sudo password' do
  # command 'sudo echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers'
# end

# grab and install the chef client
  # wget https://packages.chef.io/files/stable/chef/12.19.36/ubuntu/16.04/chef_12.19.36-1_amd64.deb
  # sudo dpkg -i chef_12.19.36-1_amd64.deb

apt_update 'Update the apt cache' do
  action :update
end

execute 'Upgrade packages' do
  command 'apt-get -y upgrade'
end

package [
  'git',
  'htop',
  'gparted',
  'nemo',
  'silversearcher-ag',
  'openvpn',
  'ufw',
  'sysinfo',
  'nmap',
  'ruby-bundler',
  'gimp',
  'nfs-common',
  'nfs-kernel-server'
]

execute 'Start firewall' do
  command 'ufw enable'
end

directory '/home/user/Downloads/Packages' do
  action :create
end

remote_file '/home/user/Downloads/Packages/sublime-text_build-3126_amd64.deb' do
  action :create
  source 'https://download.sublimetext.com/sublime-text_build-3126_amd64.deb'
end

dpkg_package '/home/user/Downloads/Packages/sublime-text_build-3126_amd64.deb' do
  action :install
end

##### figure out how to do this

### install
# pip
# sublime text
# zoom
# cisco anyconnect
# veracrypt
# google chrome
# google earth
# opera
# ghostery on firefox
# ghostery on chrome

### prefs
# nemo
# blank screen / screensaver

### configure
# terminal preferences
# ssh key
# background image
