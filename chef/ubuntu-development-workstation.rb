# install ubuntu gnome x64 os

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
  # general packages
    # dev
      'git',
      'ruby-bundler',
      'python-pip',
    # utilities
      'htop',
      'silversearcher-ag',
    # network
      'openvpn',
      'ufw',
      'sysinfo',
      'nmap',
    # av
      'gimp',
    # office
      'libreoffice',
    # file systems / volume management
      'nemo',
      'gparted',
      'nfs-common',
      'nfs-kernel-server',
  # package dependecies
    # gnome system-monitor
      'gir1.2-gtop-2.0',
      'gir1.2-networkmanager-1.0',
      'gir1.2-clutter-1.0',
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

remote_file '/home/user/Downloads/Packages/google-chrome-stable_current_amd64.deb' do
  action :create
  source 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
end

dpkg_package '/home/user/Downloads/Packages/google-chrome-stable_current_amd64.deb' do
  action :install
  options '--install-suggests'
end

remote_file '/home/user/Downloads/Packages/slack-desktop-2.6.0-amd64.deb' do
  action :create
  source 'https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.0-amd64.deb'
end

dpkg_package '/home/user/Downloads/Packages/slack-desktop-2.6.0-amd64.deb' do
  action :install
end

remote_file '/home/user/Downloads/Packages/gitkraken-amd64.deb' do
  action :create
  source 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
end

dpkg_package '/home/user/Downloads/Packages/gitkraken-amd64.deb' do
  action :install
end

##### figure out how to do this

### install
# zoom
# cisco anyconnect
# veracrypt
# google earth
# opera
# ghostery on firefox
# ghostery on chrome

### prefs
# nemo
# blank screen / screensaver

### registration
# sublime text

### configure
# sublime text
# terminal preferences
# ssh key(s)
# background image
