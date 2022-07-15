#! /bin/bash
# Author:               Shutu
# Version:              1.0
# Mail:                 shutu736@gmail.com
# Date:                 2022-7-15
# Description:          ln扩容

vol=$1
username=$2

mkfs.ext4 "/dev/disk/by-id/scsi-0Linode_Volume_${vol}"
mkdir "/mnt/${vol}"
mount "/dev/disk/by-id/scsi-0Linode_Volume_${vol}" "/mnt/${vol}"
echo "/dev/disk/by-id/scsi-0Linode_Volume_${vol} /mnt/${vol} ext4 defaults,noatime,nofail 0 2" >> /etc/fstab
mkdir -p /mnt/${vol}/Download
chown ${username} /mnt/${vol}/Download/
sed -i "s#/home/${username}/Downloads/#/mnt/vol/Download/#g" /home/${username}/.config/qBittorrent/qBittorrent.conf