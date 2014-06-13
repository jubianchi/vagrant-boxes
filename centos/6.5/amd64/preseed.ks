install
url --url=http://mirror.catn.com/pub/centos/6/os/x86_64/

# repository
repo --name="CentOS Repo" --baseurl=http://mirror.catn.com/pub/centos/6/os/x86_64
repo --name="CentOS Updates" --baseurl=http://mirror.catn.com/pub/centos/6/updates/x86_64
repo --name="epel" --baseurl=http://download.fedoraproject.org/pub/epel/6/x86_64

text
skipx

lang fr_FR.UTF-8
keyboard fr-latin9
timezone --utc Europe/Paris

network --onboot=on --bootproto=dhcp

authconfig --enableshadow --passalgo=sha512
rootpw --plaintext vagrant
user --homedir=/home/vagrant --name=vagrant --password=vagrant --shell=/bin/bash

firewall --disabled
selinux --disabled
services --enabled=sshd --disable=iptables,cupsd,smartd

bootloader --location=mbr
zerombr
clearpart --all --initlabel
autopart

%pre

%packages –nobase
    @Base
    @Core

    kernel-devel
    kernel-headers
    dkms
    make
    binutils

    sudo
    curl
    wget

%post
    exec < /dev/tty6 > /dev/tty6
    chvt 6

    groupadd admin
    useradd -g admin vagrant

    echo 'UseDNS no' >> /etc/ssh/sshd_config

    echo 'Defaults:vagrant !requiretty' >> /etc/sudoers.d/vagrant
    echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/vagrant
%end

reboot
