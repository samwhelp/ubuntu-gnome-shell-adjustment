

################################################################################
### Head: Setting / Module / Gnome Shell / Variable
##

gnome_shell_config_main_var_init () {

	THE_GNOME_SHELL_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-shell-config-main.gschema.override"

	THE_GNOME_SHELL_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_SHELL_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_shell_config_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_config_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_SHELL_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_config_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_config_main_var_init
gnome_shell_config_main_var_dump

##
### Tail: Setting / Module / Gnome Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Portal
##

gnome_shell_config_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_config_main_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_config_main_settings_set_all


	return 0

}


gnome_shell_config_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_config_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_config_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_config_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_config_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Settings
##

gnome_shell_config_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'"
	gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'toggle-shade'"
	gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'toggle-shade'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'"
	gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'"
	gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'"
	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true"
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences raise-on-click true"
	gsettings set org.gnome.desktop.wm.preferences raise-on-click true


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'"
	gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'"
	gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.peripherals.keyboard numlock-state false"
	gsettings set org.gnome.desktop.peripherals.keyboard numlock-state false


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true"
	gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.sound event-sounds false"
	gsettings set org.gnome.desktop.sound event-sounds false








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface clock-format '24h'"
	gsettings set org.gnome.desktop.interface clock-format '24h'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface clock-show-seconds true"
	gsettings set org.gnome.desktop.interface clock-show-seconds true


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.interface clock-show-weekday true"
	gsettings set org.gnome.desktop.interface clock-show-weekday true




	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Gschema
##

gnome_shell_config_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_SHELL_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_SHELL_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
