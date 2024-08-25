#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
. "${script_dir}/functions.sh"

set -x

if [[ ! -f /.install-gnome-firefox-executed ]]; then
  # OS起動時に GNOME が起動するようにする。
  # GNOME はコンソールと解像度を設定できるようにする。
  sudo apt install zstd gnome-console gdm3 -y || die

  # Firefox をインストールする。
  sudo apt-get install firefox-esr-l10n-ja -y || die

  sudo touch /.install-gnome-firefox-executed || die
fi
