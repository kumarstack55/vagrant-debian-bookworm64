#!/bin/bash
set -x

echo "vagrant:vagrant" | sudo chpasswd

update-alternatives --set editor /usr/bin/vim.tiny

apt-get update
apt-get install curl -y

if [[ ! -f /.get-docker-executed ]]; then
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
  usermod -aG docker vagrant
  touch /.get-docker-executed
fi
