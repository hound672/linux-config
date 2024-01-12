# Copies the path of given directory or file to the system or X Windows clipboard.
# Copy current_config directory if no parameter.
function pwd_copy {
  # If no argument passed, use current_config directory
  local file="${1:-.}"

  # If argument is not an absolute path, prepend $PWD
  [[ $file = /* ]] || file="$PWD/$file"

  # Copy the absolute path without resolving symlinks
  # If clipcopy fails, exit the function with an error
  print -n "${file:a}" | clipcopy || return 1

  echo ${(%):-"%B${file:a}%b copied to clipboard."}
}

# add config file for kubectl
function kc_add_config {
  local config_to_add="${1:-}"

  if [ -z $config_to_add ]
  then
    echo "Path to config is not specified"
    return 1
  fi

  if [ ! -f $config_to_add ]
  then
      echo "File "${(%):-"%B${config_to_add}%b does not exist."}
      return 1
  fi

  local current_config="${KUBECONFIG:-~/.kube/config}"

  if [[ $current_config == *${config_to_add}* ]]
  then
    echo ${(%):-"%B${config_to_add}%b already in config."}
    return
  fi

  export KUBECONFIG="${current_config}:${config_to_add}"

  echo ${(%):-"%B${config_to_add}%b added to kubectl."}
}

# clear old tmux-resurrect sessions
function tmux_clear_resurrect {
  local current_dir=$PWD

  local resurrect_path=$(tmux show -g @resurrect-dir | awk '{print $2}')
  cd $resurrect_path

  local last=$(readlink last)

  for session_file_name in $(fd txt -E $last)
  do
    echo "Remove file: "${(%):-"%B${session_file_name}%b"}
    rm -f $session_file_name
  done

  cd $current_dir
}