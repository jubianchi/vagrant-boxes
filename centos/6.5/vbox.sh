yum --disableplugin=fastestmirror install -y kernel-devel-`uname -r` kernel-headers

mkdir -p /root/guest
mount -o loop -t iso9660 /root/VBoxGuestAdditions.iso /root/guest/
/root/guest/VBoxLinuxAdditions.run
umount /root/guest
rm -rf /root/guest /root/VBoxGuestAdditions.iso
