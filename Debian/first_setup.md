```bash
su - -c "groupadd docker || true && usermod -aG docker,sudo $USER && reboot"
```
```bash
sudo apt update && \
sudo apt install -y vim git openssl gcc automake libtool net-tools autoconf cmake jq tmux wget perl lua5.4
```
