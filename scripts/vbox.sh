mkdir /home/vagrant/vbox_guest
sudo mount -o loop -t iso9660 /home/vagrant/VBoxGuestAdditions.iso /home/vagrant/vbox_guest

yes yes | sudo /home/vagrant/vbox_guest/VBoxLinuxAdditions.run

sudo umount /home/vagrant/vbox_guest
rm -f /home/vagrant/VBoxGuestAdditions.iso
rm -rf /home/vagrant/vbox_guest
