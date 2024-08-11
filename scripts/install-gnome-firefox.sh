#!/bin/bash
set -x

if [[ ! -f /.install-gnome-firefox-executed ]]; then
  # OS起動時に GNOME が起動するようにする。
  # GNOME はコンソールと解像度を設定できるようにする。
  sudo apt install zstd gnome-console gdm3 -y

  # Firefox をインストールする。
  sudo apt-get install firefox-esr-l10n-ja -y

  touch /.install-gnome-firefox-executed
fi
