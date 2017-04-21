# only run this when you need to download installation packages, after you've run bootstrap.rb once already

directory '/home/user/Downloads/Packages' do
  action :create
  owner 'user'
  group 'user'
end

### utils
# sublime text
remote_file '/home/user/Downloads/Packages/sublime-text_build-3126_amd64.deb' do
  action :create
  source 'https://download.sublimetext.com/sublime-text_build-3126_amd64.deb'
  owner 'user'
  group 'user'
end

### vms
# virtualbox
remote_file '/home/user/Downloads/Packages/virtualbox-5.0_5.0.36-114008~Ubuntu~xenial_amd64.deb' do
  action :create
  source 'http://download.virtualbox.org/virtualbox/5.0.36/virtualbox-5.0_5.0.36-114008~Ubuntu~xenial_amd64.deb'
  owner 'user'
  group 'user'
end

# vagrant
remote_file '/home/user/Downloads/Packages/vagrant_1.9.2_x86_64.deb' do
  action :create
  source 'https://releases.hashicorp.com/vagrant/1.9.2/vagrant_1.9.2_x86_64.deb'
  owner 'user'
  group 'user'
end

### dev
# gitkraken
remote_file '/home/user/Downloads/Packages/gitkraken-amd64.deb' do
  action :create
  source 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
  owner 'user'
  group 'user'
end
