#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
. "${script_dir}/functions.sh"

set -x

sudo apt-get install ansible -y || die

(
  export ANSIBLE_LOCALHOST_WARNING=False
  export ANSIBLE_INVENTORY_UNPARSED_WARNING=False
  ansible-playbook --diff /vagrant/ansible/playbook.yml
) || die
