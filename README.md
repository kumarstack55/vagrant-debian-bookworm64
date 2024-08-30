# vagrant-debian-bookworm64-docker

## 要件

- Vagrant 2.4.1+
- VirtualBox 7.0+

## インストール

```bash
git clone https://github.com/kumarstack55/vagrant-debian-bookworm64-docker.git
Set-Location .\vagrant-debian-bookworm64-docker

# リポジトリへ格納時 crlf を lf に変換し、リポジトリから取得時に変換しない。
# 理由:
# このリポジトリは Windows 環境で bash スクリプトを配置する。
# 配置されたスクリプトは vagrant によって共有され Linux から実行される。
# スクリプトが正常に動作するよう、リポジトリから取得時に lf を crlf に
# 変換しないようにするため。
# https://stackoverflow.com/a/20653073
git config core.autocrlf input

#vagrant destroy -f

#vagrant box list
#vagrant box update --box debian/bookworm64
vagrant box prune --name debian/bookworm64

vagrant up
```

## 参考

### キーボード・レイアウトを変更する

```bash
sudo dpkg-reconfigure keyboard-configuration
    # Generic 105-key PC - Japanese
```

### GNOME でスクリーンロックやサスペンドしないようにする

- Settings
    - Power
        - Power Saving Options
            - Screen Blank: Never
            - Automatic Suspend: Off

## LICENSE

MIT
