https://go.dev/doc/install

```bash
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && \
echo -e "\nexport PATH=\$PATH:/usr/local/go/bin" > $HOME/.bash_profile && \
go version
```
