VERSION=dev
PHP_VERSION=54
PROVIDER=virtualbox

php-$(PHP_VERSION)-$(PROVIDER)-$(VERSION).box: update
	vagrant up php$(PHP_VERSION) --provider=$(PROVIDER)
ifeq ($(PROVIDER),virtualbox)
		vagrant package --output=php-$(PHP_VERSION)-$(PROVIDER)-$(VERSION).box php$(PHP_VERSION)
else
		vagrant halt php$(PHP_VERSION)
		@echo "http://docs.vagrantup.com/v2/vmware/boxes.html"
endif

.PHONY: update clean-boxes clean-all php54-vmware php55-vmware php54-vbox php55-vbox

php54-vmware:
	make PHP_VERSION=54 PROVIDER=vmware_fusion

php55-vmware:
	make PHP_VERSION=55 PROVIDER=vmware_fusion

php56-vmware:
	make PHP_VERSION=56 PROVIDER=vmware_fusion

phpmaster-vmware:
	make PHP_VERSION=master PROVIDER=vmware_fusion

php54-vbox:
	make PHP_VERSION=54 PROVIDER=virtualbox

php55-vbox:
	make PHP_VERSION=55 PROVIDER=virtualbox

php56-vbox:
	make PHP_VERSION=56 PROVIDER=virtualbox

phpmaster-vbox:
	make PHP_VERSION=master PROVIDER=virtualbox

update:
ifdef PROVIDER
	vagrant box update --provider=$(PROVIDER)
else
	vagrant box update
endif

clean-all: clean-boxes

clean-boxes:
	vagrant destroy -f
	rm -f *.box
