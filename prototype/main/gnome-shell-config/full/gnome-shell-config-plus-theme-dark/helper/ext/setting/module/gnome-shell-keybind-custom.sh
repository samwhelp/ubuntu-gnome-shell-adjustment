

################################################################################
### Head: Setting / Module / Gnome-Shell / Variable
##

gnome_shell_keybind_custom_var_init () {

	THE_GNOME_SHELL_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME="50_gnome-shell-keybind-custom.conf"

	THE_GNOME_SHELL_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_GNOME_SHELL_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	THE_GNOME_SHELL_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_GNOME_SHELL_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"


	return 0

}

gnome_shell_keybind_custom_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_shell_keybind_custom_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome-Shell / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME=${THE_GNOME_SHELL_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_SHELL_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH=${THE_GNOME_SHELL_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_GNOME_SHELL_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH=${THE_GNOME_SHELL_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_shell_keybind_custom_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_shell_keybind_custom_var_init
gnome_shell_keybind_custom_var_dump

##
### Tail: Setting / Module / Gnome-Shell / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Shell / Portal
##

gnome_shell_keybind_custom_config_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_custom_config_install"
	util_error_echo "##"
	util_error_echo




	gnome_shell_keybind_custom_settings_set_all

	return 0
}


gnome_shell_keybind_custom_asset_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_custom_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


gnome_shell_keybind_custom_prototype_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## gnome_shell_keybind_custom_prototype_install"
	util_error_echo "##"
	util_error_echo




	sys_dconf_init

	gnome_shell_keybind_custom_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Gnome-Shell / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Shell / Settings
##

gnome_shell_keybind_custom_settings_set_all () {

	gnome_shell_keybind_custom_config_by_gsettings

	return 0

}

gnome_shell_keybind_custom_config_by_gsettings () {


	gnome_shell_config_keybind_custom




	util_error_echo

	return 0

}

##
### Tail: Setting / Module / Gnome-Shell / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Shell / Dconf
##

gnome_shell_keybind_custom_dconfdb_put_all () {

	gnome_shell_keybind_custom_dconfdb_put_main

	return 0

}


gnome_shell_keybind_custom_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_GNOME_SHELL_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_GNOME_SHELL_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

##
### Tail: Setting / Module / Gnome-Shell / Dconf
################################################################################








################################################################################
### Head: gnome-shell / keybind / custom
##

gnome_shell_config_keybind_custom () {


	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/
	##
	## ```
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding command ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding name ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding binding ''
	## ```
	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	##
	##



	##
	## ## Clear Old
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Clear Old"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/"
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/


	##
	## ## Dump All
	##

	#dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/




	##
	## ## Logout
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Logout"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/name \"'System_Logout'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/name "'System_Logout'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/command \"'gnome-session-quit --logout'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/command "'gnome-session-quit --logout'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/binding \"'<Shift><Alt>x'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/binding "'<Shift><Alt>x'"


	##
	## ## Reboot
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Reboot"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/name \"'System_Rebot'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/name "'System_Rebot'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/command \"'gnome-session-quit --reboot'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/command "'gnome-session-quit --reboot'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/binding \"'<Control><Alt>x'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/binding "'<Control><Alt>x'"


	##
	## ## Shutdown
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Shutdown"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/name \"'System_Shutdown'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/name "'System_Shutdown'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/command \"'gnome-session-quit --power-off'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/command "'gnome-session-quit --power-off'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/binding \"'<Shift><Alt>z'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/binding "'<Shift><Alt>z'"




	##
	## ## Wallpaper Shuf
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Wallpaper Shuf"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/name \"'Wallpaper_Shuf'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/name "'Wallpaper_Shuf'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/command \"'wallpaper-select-gnome shuf_favorite'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/command "'wallpaper-select-gnome shuf_favorite'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/binding \"'<Alt>w'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/binding "'<Alt>w'"


	##
	## ## Wallpaper Default
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Wallpaper Default"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/name \"'Wallpaper_Default'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/name "'Wallpaper_Default'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/command \"'wallpaper-select-gnome default'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/command "'wallpaper-select-gnome default'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/binding \"'<Control><Alt>w'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/binding "'<Control><Alt>w'"




	##
	## ## Control Center
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Control Center"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/name \"'Control_Center'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/name "'Control_Center'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/command \"'gnome-control-center keyboard'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/command "'gnome-control-center keyboard'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/binding \"'<Shift><Alt>s'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/binding "'<Shift><Alt>s'"




	##
	## ## Rofi Show Run
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Run"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name \"'Rofi_Show_Run'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name "'Rofi_Show_Run'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command \"'rofi -show run'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command "'rofi -show run'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding \"'<Shift><Alt>r'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding "'<Shift><Alt>r'"


	##
	## ## Rofi Show Window
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Window"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name \"'Rofi_Show_Window'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name "'Rofi_Show_Window'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command \"'rofi -show window -show-icons'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command "'rofi -show window -show-icons'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding \"'<Shift><Alt>w'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding "'<Shift><Alt>w'"


	##
	## ## Rofi Show Drun
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Drun"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/name \"'Rofi_Show_Drun'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/name "'Rofi_Show_Drun'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/command \"'rofi -show drun -show-icons'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/command "'rofi -show drun -show-icons'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/binding \"'<Shift><Alt>d'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"





	##
	## ## Terminal
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name \"'Terminal'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/name "'Terminal'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command \"'gnome-terminal'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/command "'gnome-terminal'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding \"'<Alt>Return'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/binding "'<Alt>Return'"


	##
	## ## Terminal-1
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-1"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name \"'Terminal-1'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/name "'Terminal-1'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command \"'gnome-terminal'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/command "'gnome-terminal'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding \"'<Shift><Alt>a'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/binding "'<Shift><Alt>a'"


	##
	## ## Terminal-2
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-2"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/name \"'Terminal-2'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/name "'Terminal-2'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/command \"'xfce4-terminal --maximize'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/command "'xfce4-terminal --maximize'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/binding \"'<Control><Alt>a'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/binding "'<Control><Alt>a'"


	##
	## ## Terminal-3
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-3"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/name \"'Terminal-3'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/name "'Terminal-3'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/command \"'xterm'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/command "'xterm'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/binding \"'<Shift><Alt>t'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/binding "'<Shift><Alt>t'"


	##
	## ## Terminal-4
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-4"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/name \"'Terminal-4'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/name "'Terminal-4'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/command \"'qterminal'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/command "'qterminal'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/binding \"'<Control><Alt>t'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/binding "'<Control><Alt>t'"



	##
	## ## Text Editor
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Text Editor"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name \"'Text_Editor'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/name "'Text_Editor'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command \"'gnome-text-editor'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/command "'gnome-text-editor'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding \"'<Shift><Alt>e'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/binding "'<Shift><Alt>e'"


	##
	## ## Web Browser
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Web Browser"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name \"'Web_Browser'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/name "'Web_Browser'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command \"'firefox --new-tab about:blank'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding \"'<Shift><Alt>b'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/binding "'<Shift><Alt>b'"


	##
	## ## File Manager
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## File Manager"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name \"'File_Manager'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/name "'File_Manager'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command \"'nautilus'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/command "'nautilus'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding \"'<Shift><Alt>f'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/binding "'<Shift><Alt>f'"


	##
	## ## File_Manager-1
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## File_Manager-1"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name \"'File_Manager-1'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/name "'File_Manager-1'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command \"'thunar'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/command "'thunar'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding \"'<Shift><Alt>g'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/binding "'<Shift><Alt>g'"




	##
	## ## Volume Control
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Control"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/name \"'Volume_Control'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/name "'Volume_Control'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/command \"'mate-volume-control'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/command "'mate-volume-control'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/binding \"'<Shift><Alt>v'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/binding "'<Shift><Alt>v'"


	##
	## ## Volume Toggle Mute
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Toggle Mute"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/name \"'Volume_Toggle_Mute'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/name "'Volume_Toggle_Mute'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/command \"'amixer -q -D pulse sset Master toggle'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/command "'amixer -q -D pulse sset Master toggle'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/binding \"'<Alt>m'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/binding "'<Alt>m'"


	##
	## ## Volume Decrease
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Decrease"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/name \"'Volume_Decrease'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/name "'Volume_Decrease'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/command \"'amixer -q -D pulse sset Master 5%- unmute'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/command "'amixer -q -D pulse sset Master 5%- unmute'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/binding \"'<Shift><Alt>comma'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/binding "'<Shift><Alt>comma'"


	##
	## ## Volume Increase
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Increase"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/name \"'Volume_Decrease'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/name "'Volume_Decrease'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/command \"'amixer -q -D pulse sset Master 5%+ unmute'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/command "'amixer -q -D pulse sset Master 5%+ unmute'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/binding \"'<Shift><Alt>period'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/binding "'<Shift><Alt>period'"


	##
	## ## Volume Decrease Slowly
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Decrease Slowly"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/name \"'Volume_Decrease_Slowly'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/name "'Volume_Decrease_Slowly'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/command \"'amixer -q -D pulse sset Master 1%- unmute'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/command "'amixer -q -D pulse sset Master 1%- unmute'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/binding \"'<Control><Alt>comma'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/binding "'<Control><Alt>comma'"


	##
	## ## Volume Increase Slowly
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Increase Slowly"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/name \"'Volume_Increase_Slowly'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/name "'Volume_Increase_Slowly'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/command \"'amixer -q -D pulse sset Master 1%+ unmute'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/command "'amixer -q -D pulse sset Master 1%+ unmute'"

	util_error_echo
	util_error_echo "dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/binding \"'<Control><Alt>period'\""
	dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/binding "'<Control><Alt>period'"








	##
	## ## Custom Keybindings
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Custom Keybindings"
	util_error_echo "##"

	util_error_echo
	util_error_echo "gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \"['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/']\""
	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-logout/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-reboot/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-shutdown/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-shuf/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/wallpaper-default/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/control-center/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal-4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/text-editor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/web-browser/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/file-manager-1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-control/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-toggle-mute/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-decrease-slowly/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/volume-increase-slowly/']"





	return 0


	util_error_echo
	util_error_echo
	util_error_echo

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Dump: keybindings_custom"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/"
	util_error_echo
	dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	util_error_echo

	util_error_echo
	util_error_echo "gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings"
	util_error_echo
	gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings
	util_error_echo




	return 0

}

##
### Tail: gnome-shell / keybind / custom
################################################################################
