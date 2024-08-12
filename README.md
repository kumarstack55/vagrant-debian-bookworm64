# vagrant-debian-bookworm64-docker

## 要件

- Vagrant 2.4.1+
- VirtualBox 7.0+

## インストール

```bash
git clone https://github.com/kumarstack55/vagrant-debian-bookworm64-docker.git
Set-Location .\vagrant-debian-bookworm64-docker

# Windows 環境に bash スクリプトを配置する。
# そのため、 lf を crlf に変換しないようにする。
# https://stackoverflow.com/a/20653073
git config core.autocrlf input

#vagrant destroy -f

#vagrant box list
#vagrant box update --box debian/bookworm64

vagrant up
```

## 参考

### キーボード・レイアウトを変更する

```bash
sudo dpkg-reconfigure keyboard-configuration
    # Generic 105-key PC - Japanese
```

## LICENSE

MIT
