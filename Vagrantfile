# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "brownell/xenial64lemp"

  config.vm.network "forwarded_port", guest: 80, host: 8081
  config.vm.synced_folder ".", "/home/vagrant/grav"

  config.vm.provision :shell, :path => "provision/provision.sh", :privileged => true
end
