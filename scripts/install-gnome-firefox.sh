#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
. "${script_dir}/functions.sh"

executed_flag_file_path=/.install-gnome-firefox-executed 

set -x

if [[ ! -f "${executed_flag_file_path}" ]]; then
  # OS起動時に GNOME が起動するようにする。
  # GNOME はコンソールと解像度とキーボード・レイアウトを設定できるようにする。
  sudo apt install zstd gnome-console gdm3 -y || die

  # Firefox をインストールする。
  sudo apt-get install firefox-esr-l10n-ja -y || die

  sudo touch "${executed_flag_file_path}" || die
fi
