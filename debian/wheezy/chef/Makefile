VERSION=dev
PROVIDER=vbox
ARCH=i386

debian-wheezy-chef-$(ARCH)-$(PROVIDER)-$(VERSION).box:
	packer build --force --var-file=../$(ARCH).json $(PROVIDER).json
	mv debian-wheezy-chef-$(ARCH)-$(PROVIDER).box debian-wheezy-chef-$(ARCH)-$(PROVIDER)-$(VERSION).box

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
	rm -f *.box

clean-cache:
	rm -rf packer_cache
