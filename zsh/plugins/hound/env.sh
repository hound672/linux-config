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
  local env_string
  env | fzf --bind "enter:become(echo {})" | read env_string

  local env_result=(${(s/=/)env_string})

  echo ${(%):-"Value of %B${env_result[1]}%b env var %B${env_result[2]}%b is copied to clipboard."}
  echo -n ${env_result[2]} | clipcopy
}
