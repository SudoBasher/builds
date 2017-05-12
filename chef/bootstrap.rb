# only run this bootstrap.rb script once after bootstrap.sh

### git repos
# scan ssh fingerprint
execute 'Add Github SSH fingerprint' do
  command 'ssh-keyscan github.com >> ~/.ssh/known_hosts'
end