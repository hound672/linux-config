# ===== GO commands =====

alias go_env='f() {export GOPATH="$@";export PATH=$PATH:$GOPATH/bin;}; f'

# Set GOBIN path as passed dir
function go_bin_path {
  # If no argument passed, use current_config directory
  local new_bin_dir="${1:-}"

  if [ -z ${new_bin_dir} ]
  then
    echo "Pass the dir!"
    return 1
  fi

  new_bin_dir=$PWD/$new_bin_dir
  __set_go_env GOBIN new_bin_dir
}

function __set_go_env {
    local name=${1}
    local value=${2}

    echo $name
    echo $value
    echo ${(%):-"%B${value:a}%b new %B${name}%b."}
}