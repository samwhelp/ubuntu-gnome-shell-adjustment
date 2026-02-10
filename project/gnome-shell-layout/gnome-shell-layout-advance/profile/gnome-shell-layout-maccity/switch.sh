#!/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="${base_dir_path}"


## run install.sh only_switch
ONLY_SWITCH=true "${plan_dir_path}/install.sh"
