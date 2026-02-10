

## debug
DEFAULT_IS_DEBUG=false
IS_DEBUG="${IS_DEBUG:=$DEFAULT_IS_DEBUG}"


## option
DEFAULT_ONLY_SWITCH=false
ONLY_SWITCH="${ONLY_SWITCH:=$DEFAULT_ONLY_SWITCH}"


## core
. "${plan_dir_path}/lib/core.sh"


## path
. "${plan_dir_path}/lib/path.sh"


## base
. "${plan_dir_path}/lib/base.sh"


## model
. "${plan_dir_path}/lib/hook.sh"
