

# Gnome Shell Layout




## Subject

* [Implement](#implement)
* [Requirement](#requirement)
* [Layout Profile](#layout-profile)


## Implement

| Implement |
| --------- |
| [gnome-shell-layout-basic](gnome-shell-layout-basic) |
| [gnome-shell-layout-advance](gnome-shell-layout-advance) |
| [gnome-shell-layout-advance-plus-keybind](gnome-shell-layout-advance-plus-keybind) |
| [gnome-shell-layout-advance-full](gnome-shell-layout-advance-full) |




## Requirement

| Requirement | Note |
| ----------- | ---- |
| [gnome-extensions-cli](https://github.com/essembeh/gnome-extensions-cli) | for install extension |
| [pipx](https://github.com/pypa/pipx) | for install gnome-extensions-cli |

> run to install [pipx](https://packages.ubuntu.com/questing/pipx) at ubuntu

``` sh
sudo apt-get install pipx
```

> run to install gnome-extensions-cli (gext)

``` sh
sudo pipx install gnome-extensions-cli --global
```

| Requirement | Note |
| ----------- | ---- |
| [gir1.2-gmenu-3.0](https://packages.ubuntu.com/questing/gir1.2-gmenu-3.0) | for [ArcMenu](https://extensions.gnome.org/extension/3628/arcmenu/) |

> run to install gir1.2-gmenu-3.0 at ubuntu

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




## Layout Profile

* [gnome-shell-layout-wincity](#gnome-shell-layout-wincity)
* [gnome-shell-layout-maccity](#gnome-shell-layout-maccity)




### gnome-shell-layout-wincity

| Gnome Extensions | Source |
| ---------------- | ------ |
| [dash-to-panel@jderose9.github.com](https://extensions.gnome.org/extension/1160/dash-to-panel/) | [Source](https://github.com/home-sweet-gnome/dash-to-panel) |
| [arcmenu@arcmenu.com](https://extensions.gnome.org/extension/3628/arcmenu/) | [Source](https://gitlab.com/arcmenu/ArcMenu) |
| [blur-my-shell@aunetx](https://extensions.gnome.org/extension/3193/blur-my-shell/) | [Source](https://github.com/aunetx/blur-my-shell) |
| [date-menu-formatter@marcinjakubowski.github.com](https://extensions.gnome.org/extension/4655/date-menu-formatter/) | [Source](https://github.com/marcinjakubowski/date-menu-formatter) |




### gnome-shell-layout-maccity

| Gnome Extensions | Source |
| ---------------- | ------ |
| [dash-to-dock@micxgx.gmail.com](https://extensions.gnome.org/extension/307/dash-to-dock/) | [Source](https://github.com/micheleg/dash-to-dock) |
| [arcmenu@arcmenu.com](https://extensions.gnome.org/extension/3628/arcmenu/) | [Source](https://gitlab.com/arcmenu/ArcMenu) |
| [blur-my-shell@aunetx](https://extensions.gnome.org/extension/3193/blur-my-shell/) | [Source](https://github.com/aunetx/blur-my-shell) |
| [date-menu-formatter@marcinjakubowski.github.com](https://extensions.gnome.org/extension/4655/date-menu-formatter/) | [Source](https://github.com/marcinjakubowski/date-menu-formatter) |
