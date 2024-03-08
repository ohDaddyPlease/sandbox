```bash
echo "alias sandbox-update-makefile=\"bare_metal_path=\$HOME/bare-metal && rm -f \$bare_metal_path/Makefile && mkdir -p \$bare_metal_path && cd \$bare_metal_path && wget https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Makefile
\"" >> $HOME/.bashrc && \
source $HOME/.bashrc
```

```bash
make help
```
