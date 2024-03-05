su - -c "groupadd docker || true && usermod -aG docker,sudo,adm $USER && \
apt update && \
apt install -y vim git openssl gcc automake libtool net-tools autoconf cmake jq tmux wget perl lua5.4 && \
reboot"
