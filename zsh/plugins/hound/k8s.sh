# ===== K8S commands =====

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
