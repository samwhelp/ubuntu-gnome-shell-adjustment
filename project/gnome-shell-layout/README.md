

# Gnome Shell Layout


## Manage

| Manage |
| ------ |
| [gnome-shell-layout-basic](gnome-shell-layout-basic) |
| [gnome-shell-layout-advance](gnome-shell-layout-advance) |
| [gnome-shell-layout-advance-plus-keybind](gnome-shell-layout-advance-plus-keybind) |
| [gnome-shell-layout-advance-full](gnome-shell-layout-advance-full) |




## Requirement

| Requirement | Note |
| ----------- | ---- |
| [gnome-extensions-cli](https://github.com/essembeh/gnome-extensions-cli) | for install extension |
| [pipx](https://github.com/pypa/pipx) | for install gnome-extensions-cli |

> run to install [pipx](https://packages.debian.org/stable/pipx) at debian

``` sh
sudo apt-get install pipx
```

> run to install gnome-extensions-cli (gext)

``` sh
sudo pipx install gnome-extensions-cli --global
```

| Requirement | Note |
| ----------- | ---- |
| [gir1.2-gmenu-3.0](https://packages.debian.org/stable/gir1.2-gmenu-3.0) | for [ArcMenu](https://extensions.gnome.org/extension/3628/arcmenu/) |

> run to install gir1.2-gmenu-3.0 at debian

``` sh
sudo apt-get install gir1.2-gmenu-3.0
```

> ArcMenu Requires GMenu Package:

| Distro           | Package                                   |
| ---------------- | ----------------------------------------- |
| Debian / Ubuntu  | libgnome-menu-3-0, gir1.2-gmenu-3.0       |
| Fedora           | gnome-menus                               |
| Arch / Manjaro   | gnome-menus                               |
| OpenSUSE         | libgnome-menu-3-0, typelib-1_0-GMenu-3_0  |
