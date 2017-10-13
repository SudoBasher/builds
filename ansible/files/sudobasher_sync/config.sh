#!/bin/bash

## modify these settings as needed

	## linux options
	LinuxWorkstationHomeDirectory="/home/user/"

	## mac options
	MacWorkstationHomeDirectory="/Users/user/"

	## global settings
	LocalExcludeFileDirectory="Development/github/sudobasher/sync/"
	LocalDocumentsDirectory="Documents/"
	LocalDevelopmentUploadDirectory="Development/"
	LocalStorageUploadDirectory="Storage/"
	LocalStorageDownloadDirectory="Storage/"
	SecureDirectory="Secure/"

	LocalStorageHostsFile="Software/Configuration Files/workstation_hosts.txt"
	LocalSystemHostsFile="/etc/hosts"
	LocalStorageSSHConfigFile="Software/Configuration Files/workstation_ssh_config.txt"
	LocalSystemSSHConfigFile=".ssh/config"

	RemoteServer="server"
	RemoteStorageDirectory="/home/user/Storage/"
	RedundantServer="sync3"
	RedundantStorageDirectory="/media/ssd60/"
	NASServer="airlock"
	NASStorageDirectory="/volume1/Backup\ Data/Storage/"
	NASDevelopmentDirectory="/volume1/Backup\ Data/Development/"

## keep these system settings as is
## messing with some of these could give you a serious headache

	## app settings
	title="**Sync**"
	LinuxRsyncOptions="-avzs"
	MacRsyncOptions="-avs"
	LocalLogPrefix="rsynclog_sync_"
	LocalLogPostfix=".txt"
	ExcludeFileName="excludefile.txt"

	## sync settings
	EnableDeleteDelayOption="false"
	ExtraRsyncOptions=""
