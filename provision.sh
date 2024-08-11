#!/bin/bash
set -x

echo "vagrant:vagrant" | sudo chpasswd

update-alternatives --set editor /usr/bin/vim.tiny

apt-get update

/vagrant/scripts/install-extras.sh
/vagrant/scripts/install-gnome-firefox.sh
