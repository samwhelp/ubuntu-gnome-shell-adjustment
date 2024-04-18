

################################################################################
### Head: Setting / Module / Gnome Shell / Variable
##

gnome_shell_keybind_main_var_init () {

	THE_GNOME_SHELL_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-shell-keybind-main.gschema.override"

	THE_GNOME_SHELL_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_SHELL_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_shell_keybind_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_keybind_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_SHELL_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_keybind_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_keybind_main_var_init
gnome_shell_keybind_main_var_dump

##
### Tail: Setting / Module / Gnome Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Portal
##

gnome_shell_keybind_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_main_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_keybind_main_settings_set_all


	return 0

}


gnome_shell_keybind_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_keybind_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_keybind_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Settings
##

gnome_shell_keybind_main_settings_set_all () {


	gnome_shell_config_keybind_main


	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Gschema
##

gnome_shell_keybind_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_SHELL_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_SHELL_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Gschema
################################################################################








################################################################################
### Head: gnome-shell / keybind
##

gnome_shell_config_keybind_main () {


	gnome_shell_keybind_adjustment_config

	gnome_shell_keybind_system_config

	gnome_shell_keybind_window_config

	gnome_shell_keybind_workspace_config




	return 0

}

##
### Tail: gnome-shell / keybind
################################################################################




################################################################################
### Head: gnome-shell / keybind / adjustment
##


gnome_shell_keybind_adjustment_config () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_adjustment_config"
	util_error_echo "##"
	util_error_echo




	gnome_shell_keybind_adjustment_config_fix




	return 0

}

gnome_shell_keybind_adjustment_config_fix () {

	#echo "gsettings set org.gnome.mutter overlay-key 'Super_L'"
	#gsettings set org.gnome.mutter overlay-key 'Super_L'

	#echo "gsettings set org.gnome.mutter overlay-key ''"
	#gsettings set org.gnome.mutter overlay-key ''

	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter overlay-key ''"
	gsettings set org.gnome.mutter overlay-key ''

	##
	## Fix `<Alt><Shift>a` not work
	##

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.input-sources xkb-options \"['']\""
	gsettings set org.gnome.desktop.input-sources xkb-options "['']"

	#echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine "'"['']"'"'
	#gsettings set org.freedesktop.ibus.general.hotkey next-engine "['']"

	#echo 'gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "'"['']"'"'
	#gsettings set org.freedesktop.ibus.general.hotkey next-engine-in-menu "['']"





	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>t']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['<Super>F4']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>F4']"



	##
	## clear '<Super>t'
	##

	#echo 'gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'"['']"'"'
	#gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"




	#gsettings set org.gnome.settings-daemon.plugins.media-keys help "['', '<Super>F1']"
	##clear '<Super>F1'

	util_error_echo
	util_error_echo "gsettings set org.gnome.settings-daemon.plugins.media-keys help \"['']\""
	gsettings set org.gnome.settings-daemon.plugins.media-keys help "['']"



	#echo 'gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "'"['<Super>Escape']"'"'
	#gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['<Super>Escape']"

	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts \"['']\""
	gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['']"




	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.wingpanel --toggle-indicator=app-launcher'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action 'io.elementary.shortcut-overlay'

	#echo "gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''"
	#gsettings set org.gnome_shell.desktop.gala.behavior overlay-action ''




	return 0

}

##
### Tail: gnome-shell / keybind / adjustment
################################################################################




################################################################################
### Head: gnome-shell / keybind / system
##

gnome_shell_keybind_system_config () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_system_config"
	util_error_echo "##"
	util_error_echo


	gnome_shell_keybind_system_config_start

	gnome_shell_keybind_system_config_overview

	gnome_shell_keybind_system_config_quick

	gnome_shell_keybind_system_config_screenshot




	return 0

}

gnome_shell_keybind_system_config_start () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings panel-main-menu \"['<Alt>F1']\""
	gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog \"['<Alt>F2']\""
	gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"




	return 0

}

gnome_shell_keybind_system_config_overview () {


	##
	## ## Overview
	##

	##
	## overview / orginal
	##

	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a']"
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']"


	##
	## overview / v1
	##

	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings toggle-application-view \"['<Super>grave', '<Super>Up']\""
	gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Super>Up']"

	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings toggle-overview \"['<Super>Tab', '<Super>Down']\""
	gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Tab', '<Super>Down']"


	##
	## overview / v2
	##

	#echo
	#echo 'gsettings set org.gnome.shell.keybindings toggle-overview "'"['<Super>grave', '<Alt>Up']"'"'
	#gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>grave', '<Alt>Up']"

	#echo
	#echo 'gsettings set org.gnome.shell.keybindings toggle-application-view "'"['<Super>Tab', '<Alt>j', '<Alt>Down']"'"'
	#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>Tab', '<Alt>j', '<Alt>Down']"




	return 0

}

gnome_shell_keybind_system_config_quick () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings focus-active-notification \"['<Super>b']\""
	gsettings set org.gnome.shell.keybindings focus-active-notification "['<Super>b']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings toggle-message-tray \"['<Super>n']\""
	gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>n']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings toggle-quick-settings \"['<Super>m']\""
	gsettings set org.gnome.shell.keybindings toggle-quick-settings "['<Super>m']"




	return 0

}

gnome_shell_keybind_system_config_screenshot () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings screenshot \"['Print']\""
	gsettings set org.gnome.shell.keybindings screenshot "['Print']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings screenshot-window \"['<Super>Print']\""
	gsettings set org.gnome.shell.keybindings screenshot-window "['<Super>Print']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings show-screenshot-ui \"['<Alt>Print']\""
	gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Alt>Print']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.keybindings show-screen-recording-ui \"['<Super>v']\""
	gsettings set org.gnome.shell.keybindings show-screen-recording-ui "['<Super>v']"




	return 0

}

##
### Tail: gnome-shell / keybind / system
################################################################################




################################################################################
### Head: gnome-shell / keybind / window
##

gnome_shell_keybind_window_config () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_window_config"
	util_error_echo "##"
	util_error_echo




	gnome_shell_keybind_window_config_begin_move

	gnome_shell_keybind_window_config_begin_resize

	gnome_shell_keybind_window_config_to_close

	gnome_shell_keybind_window_config_toggle_fullscreen

	gnome_shell_keybind_window_config_toggle_maximized

	gnome_shell_keybind_window_config_to_minimize

	gnome_shell_keybind_window_config_toggle_shaded

	gnome_shell_keybind_window_config_toggle_show_desktop

	gnome_shell_keybind_window_config_toggle_above

	gnome_shell_keybind_window_config_toggle_on_all_workspaces

	gnome_shell_keybind_window_config_switch_windows

	gnome_shell_keybind_window_config_to_tiling




	return 0

}

gnome_shell_keybind_window_config_begin_move () {

	#gsettings set Window / Move

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings begin-move \"['<Super>e']\""
	gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"

	return 0

}

gnome_shell_keybind_window_config_begin_resize () {

	#gsettings set Window / Resize

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings begin-resize \"['<Super>r']\""
	gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"

	return 0

}



gnome_shell_keybind_window_config_to_close () {

	#gsettings set Window / Close

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings close \"['<Super>q']\""
	gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

	return 0

}


gnome_shell_keybind_window_config_toggle_fullscreen () {

	#gsettings set Window / Fullscreen

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen \"['<Super>f', 'F11']\""
	gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"

	return 0

}


gnome_shell_keybind_window_config_toggle_maximized () {

	#gsettings set Window / Maximize

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings toggle-maximized \"['<Super>w']\""
	gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"

	return 0

}


gnome_shell_keybind_window_config_to_minimize () {

	#gsettings set Window / Minimize

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings minimize \"['<Super>x']\""
	gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"

	return 0

}


gnome_shell_keybind_window_config_toggle_shaded () {

	#gsettings set Window / Shade

	#util_error_echo
	#util_error_echo "gsettings set org.gnome.desktop.wm.keybindings toggle-shaded \"['<Super>y']\""
	#gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"

	return 0

}


gnome_shell_keybind_window_config_toggle_show_desktop () {

	#gsettings set Window / Toggle Show Desktop

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings show-desktop \"['<Super>d', '<Alt>d']\""
	gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d', '<Alt>d']"

	return 0

}


gnome_shell_keybind_window_config_toggle_above () {

	#gsettings set org.gnome.desktop.wm.keybindings always-on-top "['<Super>t']"

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings toggle-above \"['<Super>t']\""
	gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"

	return 0

}


gnome_shell_keybind_window_config_toggle_on_all_workspaces () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces \"['<Super>g']\""
	gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "['<Super>g']"

	return 0

}


gnome_shell_keybind_window_config_raise_or_lower () {

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings raise-or-lower \"['<Super>n']\""
	gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "['<Super>n']"

	return 0

}


gnome_shell_keybind_window_config_switch_windows_empty () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-applications \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-group \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-group-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-panels \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-windows \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-group \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-panels \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-windows \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"




	return 0

}

gnome_shell_keybind_window_config_switch_windows () {

	##
	#gsettings set $ gsettings list-recursively | grep Alt | grep Tab | grep cinnamon
	##
	#gsettings set ```
	#gsettings set org.gnome.desktop.wm.keybindings switch-group ['<Alt>Above_Tab']
	#gsettings set org.gnome.desktop.wm.keybindings switch-panels ['<Control><Alt>Tab']
	#gsettings set org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']
	#gsettings set ```
	##

	gnome_shell_keybind_window_config_switch_windows_empty


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward \"['<Super>a']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-windows \"['<Super>s']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"




	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward \"['<Alt>Escape', '<Super>Left']\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Alt>Escape', '<Super>Left']"

	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings cycle-windows \"['<Super>Escape', '<Super>Right']\""
	gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Escape', '<Super>Right']"





	return 0

}



gnome_shell_keybind_window_config_to_tiling () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings maximize \"['<Control><Super>Up']\""
	gsettings set org.gnome.desktop.wm.keybindings maximize "['<Control><Super>Up']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings unmaximize \"['<Control><Super>Down']\""
	gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter.keybindings toggle-tiled-left \"['<Control><Super>Left']\""
	gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter.keybindings toggle-tiled-right \"['<Control><Super>Right']\""
	gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"




	return 0

}




##
### Tail: gnome-shell / keybind / window
################################################################################




################################################################################
### Head: gnome-shell / keybind / workspace
##

gnome_shell_keybind_workspace_config () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_window_config"
	util_error_echo "##"
	util_error_echo




	#gnome_shell_keybind_workspace_config_base

	gnome_shell_keybind_workspace_config_switch_to_workspace_cycle

	gnome_shell_keybind_workspace_config_switch_to_workspace_specific

	gnome_shell_keybind_workspace_config_move_to_workspace_specific




	return 0

}

gnome_shell_keybind_workspace_config_base () {

	##
	## Workspace
	##


	#gsettings set org.gnome.shell.overrides dynamic-workspaces true
	#gsettings set org.gnome.mutter dynamic-workspaces true


	#gsettings set org.gnome.shell.overrides dynamic-workspaces false


	util_error_echo
	util_error_echo "gsettings set org.gnome.mutter dynamic-workspaces false"
	gsettings set org.gnome.mutter dynamic-workspaces false


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences num-workspaces 5"
	gsettings set org.gnome.desktop.wm.preferences num-workspaces 5


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences workspace-names \"['File', 'Edit', 'Web', 'Term', 'Misc']\""
	gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"




	return 0

}

gnome_shell_keybind_workspace_config_switch_to_workspace_cycle () {


	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Alt>a', '<Alt>h', '<Alt>Left']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Alt>s', '<Alt>l', '<Alt>Right']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down \"[]\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"




	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left \"['<Alt>a', '<Alt>Left']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a', '<Alt>Left']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right \"['<Alt>s', '<Alt>Right']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s', '<Alt>Right']"




	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last \"['<Alt>z']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>z']"




	return 0

}

gnome_shell_keybind_workspace_config_switch_to_workspace_specific () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 \"['<Control><Alt>1']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Control><Alt>1']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 \"['<Control><Alt>2']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Control><Alt>2']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 \"['<Control><Alt>3']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Control><Alt>3']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 \"['<Control><Alt>4']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Control><Alt>4']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 \"['<Control><Alt>5']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Control><Alt>5']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 \"['<Control><Alt>6']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Control><Alt>6']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 \"['<Control><Alt>7']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Control><Alt>7']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 \"['<Control><Alt>8']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Control><Alt>8']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 \"['<Control><Alt>9']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Control><Alt>9']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 \"['<Control><Alt>0']\""
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Control><Alt>0']"



	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
	#gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']"


	return 0

}


gnome_shell_keybind_workspace_config_move_to_workspace_specific () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 \"['<Shift><Alt>exclam']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 \"['<Shift><Alt>at']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 \"['<Shift><Alt>numbersign']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 \"['<Shift><Alt>dollar']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"


	util_error_echo
	util_error_echo "	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 \"['<Shift><Alt>percent']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 \"['<Shift><Alt>asciicircum']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Alt>asciicircum']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 \"['<Shift><Alt>ampersand']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Alt>ampersand']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 \"['<Shift><Alt>asterisk']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Alt>asterisk']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 \"['<Shift><Alt>parenleft']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Alt>parenleft']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 \"['<Shift><Alt>parenright']\""
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Shift><Alt>parenright']"




	return 0

}

##
### Tail: gnome-shell / keybind / workspace
################################################################################
