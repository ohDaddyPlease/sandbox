```bash
rm -rf sandbox_config .sandbox
sandbox_config_path=$HOME/.sandbox_config
echo 'sandbox_path=$HOME/.sandbox' >> $sandbox_config_path && \
echo 'bare_metal_path=$HOME/$sandbox_path/bare-metal' >> $sandbox_config_path && \
echo 'alias sandbox-update-bm="rm -f $bare_metal_path/Makefile && mkdir -p $bare_metal_path && wget https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Makefile -o $sandbox_path/Makefile"' >> $sandbox_config_path && \
echo 'alias sandbox-bm="make -f $bare_metal_path/Makefile"' >> $sandbox_config_path && \
echo "source $sandbox_config_path" >> $HOME/.bashrc && \
source $HOME/.bashrc
```

```bash
sandbox-update-makefile && \
make help
```
