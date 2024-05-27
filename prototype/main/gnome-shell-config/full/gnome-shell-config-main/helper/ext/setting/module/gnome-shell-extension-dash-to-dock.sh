

################################################################################
### Head: Setting / Module / Gnome Shell / Variable
##

gnome_shell_extension_dash_to_dock_var_init () {

	THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-shell-extension-dash-to-dock.gschema.override"

	THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_shell_extension_dash_to_dock_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_extension_dash_to_dock_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_extension_dash_to_dock_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_extension_dash_to_dock_var_init
gnome_shell_extension_dash_to_dock_var_dump

##
### Tail: Setting / Module / Gnome Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Portal
##

gnome_shell_extension_dash_to_dock_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_extension_dash_to_dock_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_extension_dash_to_dock_settings_set_all

	return 0

}


gnome_shell_extension_dash_to_dock_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_extension_dash_to_dock_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_extension_dash_to_dock_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_extension_dash_to_dock_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_extension_dash_to_dock_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Settings
##

gnome_shell_extension_dash_to_dock_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false"
	gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock autohide false"
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true"
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'"
	gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.8"
	gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.8


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-appspread'"
	gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-appspread'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36"
	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false"
	gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock isolate-locations true"
	gsettings set org.gnome.shell.extensions.dash-to-dock isolate-locations true


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'"
	gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'"
	gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock shift-click-action 'focus-minimize-or-previews'"
	gsettings set org.gnome.shell.extensions.dash-to-dock shift-click-action 'focus-minimize-or-previews'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock shift-middle-click-action 'quit'"
	gsettings set org.gnome.shell.extensions.dash-to-dock shift-middle-click-action 'quit'


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock shortcut \"['']\""
	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['']"


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text ''"
	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text ''


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button true"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button true


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview false"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview false


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'"
	gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'







	#util_error_echo
	#util_error_echo "gsettings set org.gnome.shell favorite-apps \"['org.gnome.Nautilus.desktop', 'firefox_firefox.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Settings.desktop']\""
	#gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'firefox_firefox.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Settings.desktop']"




	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Gschema
##

gnome_shell_extension_dash_to_dock_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_SHELL_EXTENSION_DASH_TO_DOCK_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
