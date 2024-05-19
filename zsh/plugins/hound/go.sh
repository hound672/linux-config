# ===== GO commands =====

alias go_env='f() {export GOPATH="$@";export PATH=$PATH:$GOPATH/bin;}; f'

func go_rename_project() {
  local source_package_name=${1}

  echo ${source_package_name}
  fd go.mod|xargs -IX sed -i 's/${source_package_name}/hound672\/clay/g' X
#  fd go.mod|xargs -IX sed -i 's/utrack\/clay/hound672\/clay/g' X
}

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
  __set_go_env GOBIN $new_bin_dir
}

function __set_go_env {
    local name=${1}
    local value=${2}

echo $value
    export ${name}=${value}
    echo ${(%):-"%B${value:a}%b new %B${name}%b."}
}