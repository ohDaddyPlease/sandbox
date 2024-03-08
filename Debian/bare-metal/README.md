```bash
echo 'bare_metal_path=\$HOME/.sandbox/bare-metal' >> $HOME/.bashrc && \
echo 'alias sandbox-update-makefile=\"rm -f \$bare_metal_path/Makefile && mkdir -p \$bare_metal_path && cd \$bare_metal_path && wget https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Makefile"' >> $HOME/.bashrc && \
source $HOME/.bashrc
```

```bash
sandbox-update-makefile && \
make help
```
