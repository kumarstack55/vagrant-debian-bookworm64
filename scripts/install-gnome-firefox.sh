#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
. "${script_dir}/functions.sh"

set -x

install_gnome_firefox() {
  # OS起動時に GNOME が起動するようにする。
  # GNOME はコンソールと解像度とキーボード・レイアウトを設定できるようにする。
  sudo apt install zstd gnome-console gdm3 -y || die

  # Firefox をインストールする。
  sudo apt-get install firefox-esr-l10n-ja -y || die

  if [[ ! -f "${HOME}/.config/monitors.xml" ]]; then
    cp -v "${script_dir}/files/monitors.xml" "${HOME}/.config/monitors.xml"
  fi
}

call_unless_flag_exists /.install-gnome-firefox-executed install_gnome_firefox
