#!/bin/bash

osdisk="os_disk_name"
datadisk="data_disk_name"
rg="your_resource_group"
snapshot="Snap-OS-Disk"
snapshot2="Snap-data-Disk"
user=yourlogin@yourdomain.onmicrosoft.com
pass=XXXXXXX
az login -u $user -p $pass
#Create snapshots
echo
echo "Create new Snapshots"
az snapshot create -g $rg -n $snapshot --source $osdisk
az snapshot create -g $rg -n $snapshot2 --source $datadisk