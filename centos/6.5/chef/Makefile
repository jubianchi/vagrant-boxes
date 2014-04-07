VERSION=dev
PROVIDER=vbox
ARCH=i386

debian-wheezy-chef-$(ARCH)-$(PROVIDER)-$(VERSION).box:
	packer build --force --var-file=../$(ARCH)/var.json $(PROVIDER).json
	mv centos-65-chef-$(ARCH)-$(PROVIDER).box centos-65-chef-$(ARCH)-$(PROVIDER)-$(VERSION).box

.PHONY: clean-boxes clean-cache clean-all i386-vmware amd64-vmware i386-vbox amd64-vbox

i386-vmware:
	make ARCH=i386 PROVIDER=vmware

amd64-vmware:
	make ARCH=amd64 PROVIDER=vmware

i386-vbox:
	make ARCH=i386 PROVIDER=vbox

amd64-vbox:
	make ARCH=i386 PROVIDER=vbox

clean-all: clean-boxes clean-cache

clean-boxes:
	vagrant destroy -f
	vagrant box remove centos-65-chef
	rm -f *.box

clean-cache:
	rm -rf packer_cache
