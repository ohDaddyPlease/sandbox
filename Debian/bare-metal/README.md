```bash
rm -rf .sandbox_config .sandbox
sandbox_config_path=$HOME/.sandbox_config
sandbox_path=$HOME/.sandbox
bare_metal_path=$sandbox_path/bare-metal
mkdir -p $bare_metal_path

echo "sandbox_path=$sandbox_path" >> $sandbox_config_path && \
echo "bare_metal_path=$bare_metal_path" >> $sandbox_config_path && \

echo 'alias sandbox-update-bm="rm -f $bare_metal_path/Makefile && wget https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Makefile -O $bare_metal_path/Makefile"' >> $sandbox_config_path && \
echo 'alias sandbox-bm="make -f $bare_metal_path/Makefile"' >> $sandbox_config_path && \

echo "source $sandbox_config_path" >> $HOME/.bashrc && \
source $HOME/.bashrc
```

```bash
sandbox-update-bm && \
sandbox-bm help
```
