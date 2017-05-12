apt_update 'Update the apt cache' do
  action :update
end

execute 'Upgrade packages' do
  command 'apt-get -y upgrade'
end

package [
  ### utils
  'git',
  'htop',
  'gparted',
  'nemo',
  'sysinfo',
  'silversearcher-ag',
  ### system
  'build-essential',
  'nfs-common',
  'nfs-kernel-server',
  ### network
  'openvpn',
  'ufw',
  'nmap',
  ### dev
  'ruby-bundler',
  'ruby-dev',
  'libz-dev',
  ### vms
  'virtualbox',
  'virtualbox-guest-additions-iso',
  ### av
  'gimp',
  ### other dependencies
  'libqt4-opengl', # for virtualbox
]

execute 'Start firewall' do
  command 'ufw enable'
end

##### installs

### utils
# sublime text
dpkg_package '/home/user/Downloads/Packages/sublime-text_build-3126_amd64.deb' do
  action :install
end

### vms
# virtualbox
#dpkg_package '/home/user/Downloads/Packages/virtualbox-5.0_5.0.36-114008~Ubuntu~xenial_amd64.deb' do
  #action :install
#end
# vagrant
dpkg_package '/home/user/Downloads/Packages/vagrant_1.9.2_x86_64.deb' do
  action :install
end
execute 'Install vagrant pluging vagrant-omnibus' do
  command 'vagrant plugin install vagrant-omnibus'
end

### dev
# gitkraken
dpkg_package '/home/user/Downloads/Packages/gitkraken-amd64.deb' do
  action :install
end

# ssh keys
directory '/home/user/.ssh' do
  action :create
  owner 'user'
  group 'user'
  mode '0700'
end

file '/home/user/.ssh/id_rsa' do
  action :touch
  owner 'user'
  group 'user'
  mode '0600'
end

file '/home/user/.ssh/known_hosts' do
  action :touch
  owner 'user'
  group 'user'
  mode '0644'
end

##### figure out how to do this

### install
# pip
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
# gnome favorites bar

### configure
# terminal preferences
# ssh key
# background image

### git repos
# [list em here]