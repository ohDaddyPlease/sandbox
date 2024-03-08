.DEFAULT_GOAL := help

.PHONY: help #This list
help:
	@perl -ne '/\.PHONY\:/ and s/\.PHONY\:// and print' $(MAKEFILE_LIST)

.PHONY: startup #Do it first. After this command system will be restarted
startup:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/Startup/install.sh)"

.PHONY: all
all: docker golang redis nginx

.PHONY: docker
docker:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/Docker/install.sh)"

.PHONY: golang
golang:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Golang/install.sh)"

.PHONY: redis
redis:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Redis/install.sh)"

.PHONY: nginx
nginx:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Nginx/install.sh)"