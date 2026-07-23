---
title: Date Menu Formatter
nav_order: 5010
has_children: true
parent: Gnome Shell Extension
---


# Date Menu Formatter

| Gnome Shell Extension | Source |
| --------------------- | ------ |
| [date-menu-formatter@marcinjakubowski.github.com](https://extensions.gnome.org/extension/4655/date-menu-formatter/) | [Source](https://github.com/marcinjakubowski/date-menu-formatter) |




## Subject

* [Script](#script)




## Script

* [安裝腳本](https://github.com/samwhelp/ubuntu-gnome-shell-adjustment/tree/main/demo/scripts/installer/gnome-shell-extension/date-menu-formatter)


``` sh

##
## ## Install pipx
##

sudo apt-get install -y pipx




##
## ## Install gext
##

sudo pipx install gnome-extensions-cli --global




##
## ## Install date-menu-formatter
##

the_extension_id="date-menu-formatter@marcinjakubowski.github.com"

gext -F install "${the_extension_id}"


mkdir -p "${HOME}/.local/share/gnome-shell/extensions/${the_extension_id}/schemas"
glib-compile-schemas "${HOME}/.local/share/gnome-shell/extensions/${the_extension_id}/schemas"


gext enable "${the_extension_id}"




##
## ## Config date-menu-formatter
##

dconf load / << __EOF__


[org/gnome/shell/extensions/date-menu-formatter]
formatter='01_luxon'
pattern='HH:MM:ss yyyy-MM-dd EEEE'
text-align='center'
use-default-calendar=true
use-default-locale=true


__EOF__

```
