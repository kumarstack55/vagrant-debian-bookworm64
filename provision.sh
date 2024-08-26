#!/bin/bash
set -x

echo "vagrant:vagrant" | sudo chpasswd || exit 1

update-alternatives --set editor /usr/bin/vim.tiny || exit 1

apt-get update || exit 1

#/vagrant/scripts/install-extras.sh
#/vagrant/scripts/install-docker.sh
#/vagrant/scripts/install-gnome-firefox.sh
