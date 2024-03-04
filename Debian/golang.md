https://go.dev/doc/install

```bash
rm -rf /usr/local/go && \
tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && \
exho "\nexport PATH=\$PATH:/usr/local/go/bin" > $HOME/.bash_profile
```
