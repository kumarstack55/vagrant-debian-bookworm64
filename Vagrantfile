# vi: set ft=ruby sw=2:
Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.gui = true
  end
  config.vm.provision "shell", path: "provision.sh"
end
