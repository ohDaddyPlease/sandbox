.DEFAULT_GOAL := help

.PHONY: all
all: startup

.PHONY: startup
startup:
	su - -c "groupadd docker || true && usermod -aG docker,sudo $(USER) && reboot"

.PHONY: docker
docker:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/Docker/install.sh)"

.PHONY: help
help:
	@perl -ne '/\.PHONY\:/ and s/\.PHONY\:// and print' $(MAKEFILE_LIST)
