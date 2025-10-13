

################################################################################
### Head: Setting / Module / Gnome Shell / Variable
##

gnome_shell_wallpaper_main_var_init () {

	THE_GNOME_SHELL_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-shell-wallpaper-main.gschema.override"

	THE_GNOME_SHELL_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_SHELL_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_shell_wallpaper_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_wallpaper_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_SHELL_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_wallpaper_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_wallpaper_main_var_init
gnome_shell_wallpaper_main_var_dump

##
### Tail: Setting / Module / Gnome Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Portal
##

gnome_shell_wallpaper_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_wallpaper_main_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_wallpaper_main_settings_set_all

	return 0

}


gnome_shell_wallpaper_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_wallpaper_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_wallpaper_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_wallpaper_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_wallpaper_main_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Settings
##

gnome_shell_wallpaper_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'


	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'








	util_error_echo
	util_error_echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'




	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Gschema
##

gnome_shell_wallpaper_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_SHELL_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_SHELL_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
