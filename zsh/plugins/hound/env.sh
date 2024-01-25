# ===== ENV commands =====

# read env from .env vile
function env_accept {
  local env_file=".env"
  if [ ! -f $env_file ]
  then
    echo ${(%):-"%B${env_file}%b file not found!"}
    return 1
  fi

  export $(xargs <.env)
}

# show all env with fzf and copy value to clipboard by enter
function env_read {
  local env_value
  env | fzf --bind "enter:become(echo {})" | awk -F '=' '{print $2}' | read env_value

  echo ${(%):-"%B${env_value}%b copied to clipboard."}
  echo ${env_value} | clipcopy
}
