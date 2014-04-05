mkdir /home/vagrant/vmware_tools
sudo mount -o loop -t iso9660 /home/vagrant/vmware_tools.iso /home/vagrant/vmware_tools

tar zxpf /home/vagrant/vmware_tools/VMwareTools-9.6.0-1294478.tar.gz
sudo /home/vagrant/vmware-tools-distrib/vmware-install.pl --default

sudo umount /home/vagrant/vmware_tools
rm -f /home/vagrant/vmware_tools.iso
rm -rf /home/vagrant/vmware-tools-distrib /home/vagrant/vmware_tools
