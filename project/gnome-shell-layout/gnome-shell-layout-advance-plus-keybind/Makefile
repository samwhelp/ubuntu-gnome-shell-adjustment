
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make layout-maccity'
	@echo '	$$ make layout-wincity'
	@echo
	@echo '	$$ make switch-maccity'
	@echo '	$$ make switch-wincity'
	@echo
.PHONY: help




layout-maccity:
	./profile/gnome-shell-layout-maccity/install.sh
.PHONY: layout-maccity


layout-wincity:
	./profile/gnome-shell-layout-wincity/install.sh
.PHONY: layout-wincity




switch-maccity:
	./profile/gnome-shell-layout-maccity/switch.sh
.PHONY: switch-maccity


switch-wincity:
	./profile/gnome-shell-layout-wincity/switch.sh
.PHONY: switch-wincity








pipx-install:
	./installer/python-pipx/install.sh
.PHONY: pipx-install


gext-install:
	./installer/gnome-extensions-cli/install.sh
.PHONY: gext-install
