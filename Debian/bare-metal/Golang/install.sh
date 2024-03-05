wget https://go.dev/dl/go1.22.0.linux-$(dpkg --print-architecture).tar.gz && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf go1.22.0.linux-$(dpkg --print-architecture).tar.gz && \
echo -e "\nexport PATH=\$PATH:/usr/local/go/bin" > $HOME/.bash_profile && \
source ~/.bash_profile && \
go version
