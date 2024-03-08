archive="go1.22.0.linux-$(dpkg --print-architecture).tar.gz" && \
sudo rm -f $archive && \
wget https://go.dev/dl/$archive && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf $archive && \
echo -e "export PATH=\$PATH:/usr/local/go/bin" >> $HOME/.bashrc && \
sudo rm -f $archive && \
source $HOME/.bashrc
