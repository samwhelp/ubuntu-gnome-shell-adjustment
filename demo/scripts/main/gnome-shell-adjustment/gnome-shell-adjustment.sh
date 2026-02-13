#!/usr/bin/env bash




#echo "run: ${0}"


##
## ## Link
##
## * https://github.com/samwhelp/ubuntu-gnome-shell-adjustment/blob/main/demo/scripts/main/gnome-shell-adjustment/gnome-shell-adjustment.sh
## * https://raw.githubusercontent.com/samwhelp/ubuntu-gnome-shell-adjustment/refs/heads/main/demo/scripts/main/gnome-shell-adjustment/gnome-shell-adjustment.sh
##




##
## ## Model
##




##
## ## Model / Tool
##

mod_tool_config_install () {

	sys_tool_config_install_for_nautilus

	sys_tool_config_install_for_gedit

	sys_tool_config_install_for_gnome_text_editor

	sys_tool_config_install_for_gnome_terminal

	sys_tool_config_install_for_gnome_console

	sys_tool_config_install_for_ptyxis

	sys_tool_config_install_for_mate_terminal

	sys_tool_config_install_for_nemo

	sys_tool_config_install_for_mousepad

	sys_tool_config_install_for_plank

}

sys_tool_config_install_for_nautilus () {

dconf load / << __EOF__


[org/gnome/nautilus/preferences]
click-policy='double'
show-hidden-files=true
default-sort-in-reverse-order=false
default-sort-order='name'
default-folder-viewer='list-view'
search-filter-time-type='last_modified'


[org/gnome/nautilus/list-view]
use-tree-view=false
default-zoom-level='medium'
default-visible-columns=['name', 'size', 'date_modified', 'starred']


[org/gnome/nautilus/icon-view]
default-zoom-level='medium'


[org/gtk/gtk4/Settings/FileChooser]
show-hidden=true
sort-column='name'
sort-directories-first=true
sort-order='ascending'


[org/gtk/Settings/FileChooser]
show-hidden=true
sort-column='name'
sort-directories-first=true
sort-order='ascending'


__EOF__

}

sys_tool_config_install_for_gedit () {

dconf load / << __EOF__


[org/gnome/gedit/state/window]
side-panel-active-page='GeditFileBrowserPanel'


[org/gnome/gedit/preferences/ui]
side-panel-visible=true
show-tabs-mode='auto'


[org/gnome/gedit/preferences/editor]
display-line-numbers=true
display-right-margin=true
highlight-current-line=true
insert-spaces=false
tabs-size=uint32 4
#scheme='oblivion'
style-scheme-for-dark-theme-variant='oblivion'
style-scheme-for-light-theme-variant='solarized-light'
use-default-font=false
editor-font='Monospace 14'


[org/gnome/gedit/preferences/encodings]
candidate-encodings=['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']





[org/gnome/gedit/plugins]
active-plugins=['filebrowser', 'quickhighlight', 'modelines', 'sort', 'externaltools', 'openlinks', 'docinfo', 'pythonconsole', 'spell']


[org/gnome/gedit/plugins/externaltools]
use-system-font=false
font='Monospace 14'



[org/gnome/gedit/plugins/pythonconsole]
use-system-font=false
font='Monospace 14'


__EOF__

}

sys_tool_config_install_for_gnome_text_editor () {

dconf load / << __EOF__


[org/gnome/TextEditor]
auto-indent=true
auto-save-delay=uint32 3
custom-font='Monospace 12'
discover-settings=true
draw-spaces='[]'
enable-snippets=false
highlight-current-line=true
highlight-matching-brackets=true
indent-style='tab'
indent-width=-1
keybindings='default'
last-save-directory=''
line-height=1.2
recolor-window=true
restore-session=false
right-margin-position=80
show-grid=false
show-line-numbers=true
show-map=true
show-right-margin=true
spellcheck=true
style-scheme='oblivion'
style-variant='dark'
tab-width=uint32 4
use-system-font=false
wrap-text=true


__EOF__

}

sys_tool_config_install_for_gnome_terminal () {

dconf load / << __EOF__


[org/gnome/terminal/legacy]
default-show-menubar=false


[org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
scrollbar-policy='never'
use-system-font=false
font='Monospace 14'
use-theme-colors=false
background-color='rgb(0,0,0)'
foreground-color='rgb(170,170,170)'
palette=['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']


__EOF__

}

sys_tool_config_install_for_gnome_console () {

dconf load / << __EOF__


[org/gnome/Console]
ignore-scrollback-limit=true
scrollback-lines=10000
theme='night'
transparency=true
font-scale=1.0
use-system-font=false
custom-font='Monospace 12'


__EOF__

}

sys_tool_config_install_for_ptyxis () {

dconf load / << __EOF__


[org/gnome/Ptyxis]
profile-uuids=['578c7b2df2d9745eebe348d968ee32b4']
default-profile-uuid='578c7b2df2d9745eebe348d968ee32b4'
interface-style='dark'
font-name='Monospace 12'
use-system-font=false
restore-session=false


[org/gnome/Ptyxis/Profiles/578c7b2df2d9745eebe348d968ee32b4]
label='Default'
opacity=0.9
palette='Vs Code'


[org/gnome/Ptyxis/Shortcuts]
zoom-in='<Control>equal'
zoom-one='<Control>0'
zoom-out='<Control>minus'


__EOF__

}

sys_tool_config_install_for_mate_terminal () {

dconf load / << __EOF__


[org/mate/terminal/profiles/default]
visible-name='Default'
default-show-menubar=false
scrollbar-position='hidden'
scroll-on-keystroke=true
silent-bell=true
cursor-blink-mode='off'
use-theme-colors=false
use-custom-default-size=true
use-system-font=false
font='Monospace 14'
allow-bold=true
bold-color='#000000000000'
background-type='transparent'
background-darkness=0.85
background-color='#000000000000'
foreground-color='#AAAAAAAAAAAA'
palette='#000000000000:#CCCC00000000:#4E4D9A9A0605:#C4C3A0A00000:#34346564A4A3:#7575504F7B7B:#060598979A9A:#D3D3D7D6CFCF:#555457565352:#EFEF29282928:#8A89E2E23434:#FCFBE9E84F4F:#72729F9ECFCF:#ADAC7F7EA8A8:#3434E2E2E2E2:#EEEDEEEDECEB'


__EOF__

}

sys_tool_config_install_for_nemo () {

dconf load / << __EOF__


[org/nemo/desktop]
font='Sans 12'
#font='Monospace 12'


[org/nemo/preferences]
show-hidden-files=true
ignore-view-metadata=true
default-folder-viewer='list-view'
click-policy='double'
show-open-in-terminal-toolbar=true
show-reload-icon-toolbar=true
show-new-folder-icon-toolbar=true
date-format='iso'
never-queue-file-ops=true
inherit-folder-viewer=false
show-full-path-titles=true
date-font-choice='no-mono'


[org/nemo/compact-view]
default-zoom-level='standard'


[org/nemo/icon-view]
default-zoom-level='standard'


[org/nemo/list-view]
default-zoom-level='standard'


__EOF__

}

sys_tool_config_install_for_mousepad () {

dconf load / << __EOF__


[org/xfce/mousepad/preferences/file]
add-last-end-of-line=true


[org/xfce/mousepad/preferences/view]
auto-indent=true
color-scheme='oblivion'
font-name='Monospace 16'
highlight-current-line=true
match-braces=true
show-line-endings=false
show-line-numbers=true
show-right-margin=true
show-whitespace=true
smart-backspace=false
smart-home-end='after'
tab-width=uint32 4
use-default-monospace-font=false
word-wrap=true


[org/xfce/mousepad/preferences/window]
always-show-tabs=true
cycle-tabs=true
old-style-menu=true
statusbar-visible=true
toolbar-style='icons'
toolbar-visible=true


[org/xfce/mousepad/state/search]
highlight-all=true


[org/xfce/mousepad/state/window]
fullscreen=false
height=uint32 628
maximized=false
width=uint32 668


__EOF__

}

sys_tool_config_install_for_plank () {

dconf load / << __EOF__


[net/launchpad/plank/dock/settings]
auto-pinning=false
hide-mode='none'
theme='Gtk+'
icon-size=36
zoom-enabled=true
zoom-percent=150
#dock-items=['pcmanfm-qt.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'sakura.dockitem', 'desktop.dockitem']
dock-items=['thunar.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'xfce4-terminal.dockitem', 'xfce-settings-manager.dockitem', 'xfce-ui-settings.dockitem', 'desktop.dockitem']


__EOF__

}




##
## ## Model / Gnome Shell / Main
##

mod_gnome_shell_main_config_install () {

	sys_gnome_shell_main_config_install_for_main

	sys_gnome_shell_main_config_install_for_workspace_main

	sys_gnome_shell_main_config_install_for_favorite_apps

	sys_gnome_shell_main_config_install_for_theme_main

	sys_gnome_shell_main_config_install_for_wallpaper_main

}

sys_gnome_shell_main_config_install_for_main () {

dconf load / << __EOF__


[org/gnome/desktop/wm/preferences]
action-double-click-titlebar='toggle-maximize'
action-middle-click-titlebar='toggle-shade'
action-right-click-titlebar='menu'
button-layout='appmenu:minimize,maximize,close'
mouse-button-modifier='<Super>'
resize-with-right-button=true
raise-on-click=true
focus-mode='click'
focus-new-windows='smart'


[org/gnome/desktop/peripherals/keyboard]
numlock-state=false
remember-numlock-state=true


[org/gnome/desktop/sound]
event-sounds=false


[org/gnome/desktop/interface]
clock-format='24h'
clock-show-seconds=true
clock-show-weekday=true
enable-hot-corners=true


__EOF__

}

sys_gnome_shell_main_config_install_for_workspace_main () {

dconf load / << __EOF__


[org/gnome/desktop/wm/preferences]
num-workspaces=5
workspace-names=['File', 'Edit', 'Web', 'Term', 'Misc']


[org/gnome/mutter]
dynamic-workspaces=false


__EOF__

}

sys_gnome_shell_main_config_install_for_favorite_apps () {

dconf load / << __EOF__


[org/gnome/shell]
#favorite-apps=['org.gnome.Nautilus.desktop', 'org.gnome.TextEditor.desktop', 'firefox.desktop', 'org.gnome.Console.desktop', 'org.gnome.Settings.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.Extensions.desktop', 'com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Software.desktop']
#favorite-apps=['thunar.desktop', 'sublime_text.desktop', 'firefox.desktop', 'xfce4-terminal.desktop', 'org.gnome.Settings.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.Extensions.desktop', 'com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Software.desktop']
favorite-apps=['org.gnome.Nautilus.desktop', 'org.gnome.TextEditor.desktop', 'firefox_firefox.desktop', 'org.gnome.Ptyxis.desktop', 'org.gnome.Settings.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.Extensions.desktop', 'com.mattjakeman.ExtensionManager.desktop', 'org.gnome.Software.desktop']








##
## ## Terminal / Sample
##

#[org/gnome/desktop/default-applications.terminal]
#exec='xdg-terminal-exec'
#exec-arg='--'




##
## ## Terminal / Use Case
##

[org/gnome/desktop/default-applications.terminal]
exec='ptyxis'
exec-arg=''


[org/mate/applications-terminal]
exec='ptyxis'
exec-arg=''


[org/cinnamon/desktop/default-applications.terminal]
exec='ptyxis'
exec-arg=''


__EOF__

}

sys_gnome_shell_main_config_install_for_theme_main () {

dconf load / << __EOF__


[org/gnome/desktop/interface]
color-scheme='prefer-dark'
gtk-theme='Yaru-dark'
icon-theme='Yaru-dark'
cursor-theme='Yaru'
cursor-size=24


[org/gnome/desktop/wm/preferences]
theme='Yaru-dark'


[org/gnome/shell/extensions/user-theme]
name='Yaru-dark'


__EOF__

}

sys_gnome_shell_main_config_install_for_wallpaper_main () {

dconf load / << __EOF__


[org/gnome/desktop/background]
picture-options='zoom'
picture-uri='file:///usr/share/backgrounds/Flash_and_Thunder_by_Julian_Tomasini.jpg'
picture-uri-dark='file:///usr/share/backgrounds/Flash_and_Thunder_by_Julian_Tomasini.jpg'


[org/gnome/desktop/screensaver]
picture-uri='file:///usr/share/backgrounds/Flash_and_Thunder_by_Julian_Tomasini.jpg'


__EOF__

}




##
## ## Model / Gnome Shell / Keybind
##

mod_gnome_shell_keybind_config_install () {

	sys_gnome_shell_keybind_config_install_for_main

	sys_gnome_shell_keybind_config_install_for_custom

}

sys_gnome_shell_keybind_config_install_for_main () {

dconf load / << __EOF__


[org/gnome/shell/keybindings]
toggle-application-view=['<Super>grave', '<Control><Alt>Up']
toggle-overview=['<Super>Tab', '<Control><Alt>Down']
toggle-message-tray=['<Super>n']
toggle-quick-settings=['<Super>m']
focus-active-notification=['<Super>b']
screenshot=['Print']
screenshot-window=['<Super>Print']
show-screenshot-ui=['<Alt>Print']
show-screen-recording-ui=['<Super><Control>v']


[org/gnome/desktop/wm/keybindings]
begin-move=['<Super>e']
begin-resize=['<Super>r']
close=['<Super>q', '<Alt>F4']
cycle-group=@as []
cycle-group-backward=@as []
cycle-panels=@as []
cycle-panels-backward=@as []
cycle-windows=['<Super>Escape', '<Super>Right']
cycle-windows-backward=['<Alt>Escape', '<Super>Left']
maximize=['<Control><Super>Up']
minimize=['<Super>x']
move-to-workspace-1=['<Shift><Alt>exclam']
move-to-workspace-10=['<Shift><Alt>parenright']
move-to-workspace-2=['<Shift><Alt>at']
move-to-workspace-3=['<Shift><Alt>numbersign']
move-to-workspace-4=['<Shift><Alt>dollar']
move-to-workspace-5=['<Shift><Alt>percent']
move-to-workspace-6=['<Shift><Alt>asciicircum']
move-to-workspace-7=['<Shift><Alt>ampersand']
move-to-workspace-8=['<Shift><Alt>asterisk']
move-to-workspace-9=['<Shift><Alt>parenleft']
show-desktop=['<Super>d']
switch-applications=@as []
switch-applications-backward=@as []
switch-group=@as []
switch-group-backward=@as []
switch-panels=@as []
switch-panels-backward=@as []
switch-to-workspace-1=['<Control><Alt>1']
switch-to-workspace-10=['<Control><Alt>0']
switch-to-workspace-2=['<Control><Alt>2']
switch-to-workspace-3=['<Control><Alt>3']
switch-to-workspace-4=['<Control><Alt>4']
switch-to-workspace-5=['<Control><Alt>5']
switch-to-workspace-6=['<Control><Alt>6']
switch-to-workspace-7=['<Control><Alt>7']
switch-to-workspace-8=['<Control><Alt>8']
switch-to-workspace-9=['<Control><Alt>9']
switch-to-workspace-down=@as []
switch-to-workspace-last=['<Alt>z']
switch-to-workspace-left=['<Alt>a', '<Control><Alt>Left']
switch-to-workspace-right=['<Alt>s', '<Control><Alt>Right']
switch-to-workspace-up=@as []
switch-windows=['<Super>s']
switch-windows-backward=['<Super>a']
toggle-above=['<Super>t']
toggle-fullscreen=['<Super>f', 'F11']
toggle-maximized=['<Super>w']
toggle-on-all-workspaces=['<Super>g']
#toggle-shaded=['<Super>y']
unmaximize=['<Control><Super>Down']




[org/gnome/mutter]
overlay-key=''


[org/gnome/mutter/keybindings]
toggle-tiled-left=['<Control><Super>Left']
toggle-tiled-right=['<Control><Super>Right']


[org/gnome/mutter/wayland/keybindings]
restore-shortcuts=['']




[org/gnome/settings-daemon/plugins/media-keys]
screensaver=['<Control><Alt>x']


__EOF__

}

sys_gnome_shell_keybind_config_install_for_custom () {

dconf load / << __EOF__


[org/gnome/settings-daemon/plugins/media-keys]
custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/']




[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1]
binding='<Shift><Alt>g'
command='thunar'
name='File_Manager-1'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager]
binding='<Shift><Alt>f'
command='nautilus'
name='File_Manager'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun]
binding='<Shift><Alt>d'
command='rofi -show drun -show-icons'
name='Rofi_Show_Drun'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run]
binding='<Shift><Alt>r'
command='rofi -show run'
name='Rofi_Show_Run'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window]
binding='<Shift><Alt>w'
command='rofi -show window -show-icons'
name='Rofi_Show_Window'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center]
binding='<Shift><Alt>s'
command='gnome-control-center'
name='Control_Center'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout]
binding='<Shift><Alt>x'
command='gnome-session-quit --logout'
name='System_Logout'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown]
binding='<Shift><Alt>z'
command='gnome-session-quit --power-off'
name='System_Shutdown'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1]
binding='<Shift><Alt>a'
command='ptyxis --new-window'
name='Terminal-1'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2]
binding='<Control><Alt>a'
command='xfce4-terminal'
name='Terminal-2'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3]
binding='<Shift><Alt>t'
command='gnome-terminal'
name='Terminal-3'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4]
binding='<Control><Alt>t'
command='sakura'
name='Terminal-4'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal]
binding='<Alt>Return'
command='ptyxis --new-window'
name='Terminal'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor]
binding='<Shift><Alt>e'
command='gnome-text-editor'
name='Text_Editor'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control]
binding='<Shift><Alt>v'
command='pavucontrol'
name='Volume_Control'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly]
binding='<Control><Alt>comma'
command='amixer -q -D pulse sset Master 1%- unmute'
name='Volume_Decrease_Slowly'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease]
binding='<Shift><Alt>comma'
command='amixer -q -D pulse sset Master 5%- unmute'
name='Volume_Decrease'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly]
binding='<Control><Alt>period'
command='amixer -q -D pulse sset Master 1%+ unmute'
name='Volume_Increase_Slowly'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase]
binding='<Shift><Alt>period'
command='amixer -q -D pulse sset Master 5%+ unmute'
name='Volume_Decrease'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute]
binding='<Alt>m'
command='amixer -q -D pulse sset Master toggle'
name='Volume_Toggle_Mute'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default]
binding='<Control><Alt>w'
command='wallpaper-select-gnome default'
name='Wallpaper_Default'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf]
binding='<Alt>w'
command='wallpaper-select-gnome shuf_favorite'
name='Wallpaper_Shuf'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser]
binding='<Shift><Alt>b'
command='firefox-esr --new-tab about:blank'
name='Web_Browser'


__EOF__

}




##
## ## Model / Tips
##

sys_tips_on_done () {

cat << __EOF__

##
## ## Done
##
## It's done.
##
## Please check.
##
## For Example:
##
## * 'Super + w' to Maximize Window.
## * 'gsettings list-recursively | grep keybind' to see config via gsettings
## * 'dconf dump / | less' to see config via dconf
##

__EOF__

}




##
## ## Portal
##

mod_gnome_shell_master_config_install_prepare () {

	return 0

}

mod_gnome_shell_master_config_install_main () {

	mod_gnome_shell_main_config_install

	mod_gnome_shell_keybind_config_install

	mod_tool_config_install

}

mod_gnome_shell_master_config_install_done () {

	sys_tips_on_done

}

mod_gnome_shell_master_config_install () {

	mod_gnome_shell_master_config_install_prepare

	mod_gnome_shell_master_config_install_main

	mod_gnome_shell_master_config_install_done

}


##
## ## Main
##

__main__ () {

	mod_gnome_shell_master_config_install

}

__main__
