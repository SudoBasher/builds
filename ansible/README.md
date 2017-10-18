# Ansible

## Build your Ubuntu Gnome 16.04 LTS on a MacBook Pro

1. Follow the instructions below.
2. Drink beer.

## Instructions

### Grab a MacBook Pro

### Install Ubuntu Gnome 16.04.03 LTS:

  - download the usb image from here: http://ubuntugnome.org/
  - use a usb 2.0 stick to load up the usb image (usb 3.0 ubuntu gnome installations sometimes fail during bootup of the usb image). use the OPTION key to start from usb.
  - set your username to "user"
  - download updates while installing
  - install all aux stuff (download updates while installing, mp3 players, etc)
  - require login and password
  - encrypt home directory, not your whole hard drive

## Login to your new OS

## Run these commands:

  $ ecryptfs-unwrap-passphrase
  $ echo '[passphrase]' > Documents/hard_drive_decryption_passphrase.txt
  $ sudo su -
  $ mkdir -p /home/user/Development/github/sudobasher/builds.local/ansible/
  $ cd /home/user/Development/github/sudobasher/builds.local/ansible
  $ wget https://raw.githubusercontent.com/SudoBasher/builds/master/ansible/kickstarter.sh
  ## run commands in kickstarter one by one manually, following the notes in there
  $ wget https://raw.githubusercontent.com/SudoBasher/builds/master/ansible/bootstrap.sh
  $ sudo chmod +x bootstrap.sh
  $ . bootstrap.sh

## Then do all this stuff one by one:

  $ gsettings set org.gnome.desktop.interface clock-show-seconds true
  $ ssh-keyscan github.com >> ~/.ssh/known_hosts
  add ssh key pub to github
  add external monitors
  add bluetooth devices
  add ghostery to chrome
  install opera (manually)
  setup gitkragen:
    add repos
  setup nemo:
    add folder to side bar
      Development
      Storage
    view hidden folders
  install veracrypt:
    console
    gui
  install ssh configs:
    /home/user/.ssh/config
    /etc/hosts
  install repos:
    sync
    builds
    aws_ip_loader
  synchronize storage:
    setup sync config.sh
    run sync
  set background image from storage > av > graphics / desktop backgrounds / [somefile]
  set power config
  set nemo preferences
  added nemo server bookmarks
  set terminal prefs:
    130 x 40
    Monospace Regular 10
    text color EEEEEE
    user transparent background 5-10%
  setup favorite bar
  set sublime text for opening by default:
    .pem
    .txt
    .sh
  mount workstuff in /media/veracrypt2
  mount mystuff in /media/veracrypt1
  sign into:
    slack
    chrome
    zoom
    gitkraken
    opera
  install cloud cli credentials:
    .aws configs
    .aliyun configs
  add [this folder]/files/startup_apps/applemouse.sh to startup applications
  installed visual studio code extension: python 0.7.0
  added wefunk pls to rhythm box
  installed home printer drivers

## Additional work stuff requirements

  add new pub key to github and wherever else needed
  install work ssh keys
