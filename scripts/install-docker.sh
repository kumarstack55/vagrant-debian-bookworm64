#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
. "${script_dir}/functions.sh"

set -x

type curl || apt-get install curl -y || die

if [[ ! -f /.get-docker-executed ]]; then
  curl -fsSL https://get.docker.com -o get-docker.sh || die
  sh get-docker.sh || die
  sudo usermod -aG docker vagrant || die
  sudo touch /.get-docker-executed || die
fi
