.DEFAULT_GOAL := help

.PHONY: all
all: startup docker golang

.PHONY: startup
startup:
	su - -c "groupadd docker || true && usermod -aG docker,sudo $(USER) && reboot"

.PHONY: docker
docker:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/Docker/install.sh)"

.PHONY: golang
golang:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/Golang/install.sh)"

.PHONY: help
help:
	@perl -ne '/\.PHONY\:/ and s/\.PHONY\:// and print' $(MAKEFILE_LIST)
