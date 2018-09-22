#!/usr/bin/env bash

mkdir -p /install/rpm;

mkdir -p /install/VirtualBox;
# Download and Install the VirtualBox Guest Additions and dependencies
# All of this next line's dependencies should already by installed
yum update -y;
yum install -y gcc kernel-devel kernel-headers make bzip2 perl;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/dkms/20180826145641/2.6.1-1.el7.i386/dkms-2.6.1-1.el7.noarch.rpm;
yum install -y /install/rpm/dkms-2.6.1-1.el7.noarch.rpm;
#mkdir /usr/src/kernels/$(uname -r);
#cp -R /usr/src/kernels/3.10.0-862.11.6.el7.centos.plus.1.i686/* /usr/src/kernels/$(uname -r);

# https://forums.virtualbox.org/viewtopic.php?f=3&t=89513
# https://www.virtualbox.org/wiki/Testbuilds
#wget --directory=/install http://download.virtualbox.org/virtualbox/5.2.18/VBoxGuestAdditions_5.2.18.iso;
wget --no-clobber --directory=/install/VirtualBox https://www.virtualbox.org/download/testcase/VBoxGuestAdditions_5.2.19-125028.iso;
mkdir /install/VirtualBox/MountPoint_VBoxGuestAdditions;
#mount -o loop /install/VBoxGuestAdditions_5.2.18.iso /install/MountPoint_VBoxGuestAdditions;
mount -o loop /install/VirtualBox/VBoxGuestAdditions_5.2.19-125028.iso /install/VirtualBox/MountPoint_VBoxGuestAdditions;
/install/VirtualBox/MountPoint_VBoxGuestAdditions/VBoxLinuxAdditions.run;
umount /install/VirtualBox/MountPoint_VBoxGuestAdditions;

# Install the extension pack on the host machine to be able top use the VirtualBox Remote Desktop Protocol
#wget --no-clobber --directory=/install/VirtualBox https://download.virtualbox.org/virtualbox/5.2.18/Oracle_VM_VirtualBox_Extension_Pack-5.2.18.vbox-extpack;
#yes | VBoxManage extpack install --replace /install/VirtualBox/Oracle_VM_VirtualBox_Extension_Pack-5.2.18.vbox-extpack;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/zerofree/20160811005950/1.0.3-6.el7.i686/zerofree-1.0.3-6.el7.i686.rpm;
yum install -y /install/rpm/zerofree-1.0.3-6.el7.i686.rpm;

exit 0;