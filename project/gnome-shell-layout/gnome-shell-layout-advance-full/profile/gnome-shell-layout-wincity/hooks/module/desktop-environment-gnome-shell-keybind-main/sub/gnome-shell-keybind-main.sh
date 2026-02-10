

sub_gnome_shell_keybind_main_all_install () {


	sub_gnome_shell_keybind_main_all_install_via_dconf



}

sub_gnome_shell_keybind_main_all_install_via_dconf () {

	local the_config_list=${opt_gnome_shell_main_keybind_install}

	local the_config_id

	for the_config_id in ${the_config_list}; do

		sys_gnome_shell_keybind_main_each_install_via_dconf "${the_config_id}"

	done

}

sys_gnome_shell_keybind_main_each_install_via_dconf () {

	local the_config_id="${1}"

	if [ "${ONLY_SWITCH}" != "true" ]; then

		sys_gnome_shell_keybind_main_each_dconf_load_config "${the_config_id}"

	fi

}

sys_gnome_shell_keybind_main_each_dconf_load_config () {

	local the_config_id="${1}"

	local the_config_dconf_db_dir_path="${base_dir_path}/asset/config/${the_config_id}/dconf-db"

	if ! [ -e "${the_config_dconf_db_dir_path}" ]; then
		return
	fi


	local the_config_file_path=""

	for the_config_file_path in "${the_config_dconf_db_dir_path}"/*.conf; do

		sys_gnome_shell_keybind_main_each_dconf_load_config_file "${the_config_file_path}"

	done


}

sys_gnome_shell_keybind_main_each_dconf_load_config_file () {

	local the_config_file_path="${1}"

	if ! [ -e "${the_config_file_path}" ]; then
		return
	fi

	echo
	echo 'dconf load -f / < '"${the_config_file_path}"
	dconf load -f / < "${the_config_file_path}"
	echo

}
