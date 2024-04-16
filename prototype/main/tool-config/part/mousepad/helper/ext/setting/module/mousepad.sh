

################################################################################
### Head: Setting / Module / Mousepad / Variable
##

mousepad_var_init () {

	THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME="50_mousepad.gschema.override"

	THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mousepad_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mousepad_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mousepad / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MOUSEPAD_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mousepad_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mousepad_var_init
mousepad_var_dump

##
### Tail: Setting / Module / Mousepad / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Portal
##

mousepad_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mousepad_config_install"
	util_error_echo "##"
	util_error_echo




	mousepad_settings_set_all


	return 0

}


mousepad_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mousepad_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mousepad_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mousepad_prototype_install"
	util_error_echo "##"
	util_error_echo




	mousepad_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mousepad / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Settings
##

mousepad_settings_set_all () {


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file add-last-end-of-line true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file auto-reload false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file autosave-timer 30


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file default-encoding 'UTF-8'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file make-backup false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file monitor-changes true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file monitor-disabling-timer 500


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.file session-restore 'after-a-crash'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view auto-indent true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view color-scheme 'oblivion'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view font-name 'Monospace 16'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view highlight-current-line true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view indent-on-tab true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view indent-width -1


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view insert-spaces false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view match-braces true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view right-margin-position 80


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view show-line-endings false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view show-line-marks false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view show-line-numbers true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view show-right-margin true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace inside true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace leading true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace trailing true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view show-whitespace true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view smart-backspace false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view smart-home-end 'after'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view tab-width 4


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view use-default-monospace-font false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.view word-wrap true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window always-show-tabs true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window client-side-decorations false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window cycle-tabs true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window default-tab-sizes '2,3,4,8'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window expand-tabs true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window menubar-visible-in-fullscreen 'auto'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window menubar-visible true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window old-style-menu true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window opening-mode 'tab'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window path-in-title true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window recent-menu-items 10


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window remember-position false


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window remember-size true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window remember-state true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible-in-fullscreen 'auto'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible true


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window toolbar-style 'icons'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible-in-fullscreen 'auto'


	util_error_echo
	util_error_echo ""
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible true




	return 0

}

##
### Tail: Setting / Module / Mousepad / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mousepad / Gschema
##

mousepad_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MOUSEPAD_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MOUSEPAD_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0
}

##
### Tail: Setting / Module / Mousepad / Gschema
################################################################################
