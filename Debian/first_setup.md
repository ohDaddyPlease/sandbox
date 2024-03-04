```bash
su -
```
```bash
groupadd docker || true && \
usermod -aG docker,sudo serj && \
reboot
```
```bash
sudo apt update && \
sudo apt install -y vim git openssl gcc automake libtool autoconf cmake jq tmux wget perl lua 
```
