

## args

if [ "${IS_DEBUG}" = "true" ]; then
	echo
	echo "##"
	echo "## ## Load Args"
	echo "##"
	echo
fi


opt_gnome_shell_main_keybind_install=$(core_args_load "${base_dir_path}/args/gnome_shell_keybind_main_install.txt")




if [ "${IS_DEBUG}" = "true" ]; then

	echo
	echo "##"
	echo "## ## Option"
	echo "##"
	echo
	echo


	echo "opt_gnome_shell_main_keybind_install=${opt_gnome_shell_main_keybind_install}"


	echo
	echo

fi
