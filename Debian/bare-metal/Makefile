define delim_start
	$(info =============== Installing $(1) ===============)
endef
define delim_end
	$(info =============== ^ $(1) ===============)
endef

.DEFAULT_GOAL := help

.PHONY: help #This list
help:
	@perl -ne '/\.PHONY\:/ and s/\.PHONY\:// and print' $(MAKEFILE_LIST)

.PHONY: prepare #Do it first. After this command system will be restarted
prepare:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/prepare.sh)"

.PHONY: all
all: docker golang redis nginx tarantool _finish

.PHONY: docker
docker:
	$(call delim_start, Docker)
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Docker/install.sh)"
	$(call delim_end, Docker)

.PHONY: golang
golang:
	$(call delim_start, Golang)
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Golang/install.sh)"
	$(call delim_end, Golang)

.PHONY: redis
redis:
	$(call delim_start, Redis)
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Redis/install.sh)"
	$(call delim_end, Redis)

.PHONY: nginx
nginx:
	$(call delim_start, Nginx)
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Nginx/install.sh)"
	$(call delim_end, Nginx)

.PHONY: tarantool
tarantool:
	$(call delim_start, Tarantool)
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohDaddyPlease/sandbox/main/Debian/bare-metal/Tarantool/install.sh)"
	$(call delim_end, Tarantool)

.PHONY: _finish
_finish:
	sudo apt-get autoremove
	sudo apt-get clean
