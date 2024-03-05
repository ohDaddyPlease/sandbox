.DEFAULT_GOAL := help

.PHONY: all
all: startup

.PHONY: startup
startup:
	su - -c "groupadd docker || true && usermod -aG docker,sudo $(USER) && reboot"

.PHONY: help
help:
	@perl -ne '/\.PHONY\:/ and s/\.PHONY\:// and print' $(MAKEFILE_LIST)
