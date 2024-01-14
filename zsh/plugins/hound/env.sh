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