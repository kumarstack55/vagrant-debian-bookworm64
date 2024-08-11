#!/bin/bash
set -x

if [[ ! -f /.install-extras ]]; then
  sudo apt-get install ansible -y

  (
    export ANSIBLE_LOCALHOST_WARNING=False
    export ANSIBLE_INVENTORY_UNPARSED_WARNING=False
    ansible-playbook --diff /vagrant/ansible/playbook.yml
  )

  touch /.install-extras
fi
