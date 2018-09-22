#!/usr/bin/env bash

# Note that there is no EPEL repo for CentOS7 i386...
# Platform specific i386 builds are available here:
# https://buildlogs.centos.org/c7-epel.i386/
# http://mirror.centos.org/altarch/7/os/i386/Packages/

mkdir -p /install/rpm;

yum update -y;
yum install -y \
    nano \
    wget \
    zip \
    unzip \
    mlocate \
    policycoreutils-python \
    nmap \
    net-tools \
    tcpdump \
    lsof \
    yum-utils \
    \
    pciutils \
    lshw \
;
updatedb;
update-pciids;
yum install -y cmake;
yum group install -y "Development Tools";

exit 0;