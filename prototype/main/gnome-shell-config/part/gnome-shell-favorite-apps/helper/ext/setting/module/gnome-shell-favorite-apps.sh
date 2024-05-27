

################################################################################
### Head: Setting / Module / Gnome Shell / Variable
##

gnome_shell_favorite_apps_var_init () {

	THE_GNOME_SHELL_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME="50_gnome-shell-favorite-apps.gschema.override"

	THE_GNOME_SHELL_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_GNOME_SHELL_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_GNOME_SHELL_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

gnome_shell_favorite_apps_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_favorite_apps_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME=${THE_GNOME_SHELL_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_GNOME_SHELL_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_favorite_apps_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_favorite_apps_var_init
gnome_shell_favorite_apps_var_dump

##
### Tail: Setting / Module / Gnome Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Portal
##

gnome_shell_favorite_apps_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_favorite_apps_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_favorite_apps_settings_set_all

	return 0

}


gnome_shell_favorite_apps_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_favorite_apps_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_favorite_apps_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_favorite_apps_prototype_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_favorite_apps_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Gnome Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Settings
##

gnome_shell_favorite_apps_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.gnome.shell favorite-apps \"['org.gnome.Nautilus.desktop', 'firefox.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Settings.desktop']\""
	gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'firefox.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Settings.desktop']"




	return 0
}

##
### Tail: Setting / Module / Gnome Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome Shell / Gschema
##

gnome_shell_favorite_apps_gschema_put_all () {

	local source_gschema_override_file_path="${THE_GNOME_SHELL_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_GNOME_SHELL_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
