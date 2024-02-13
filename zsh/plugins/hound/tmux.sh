# ===== TMUX commands =====

# clear old tmux-resurrect sessions
function tmux_resurrect_clear {
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

function tmux_resurrect_backup {
  local backup_path="${1:-}"

  if [ -z $backup_path ]
    then
      echo "Backup path is not specified"
      return 1
    fi

  local current_dir=$PWD

  local resurrect_path=$(tmux show -g @resurrect-dir | awk '{print $2}')
  cd $resurrect_path

  local last=$(readlink last)

  cp $last $backup_path
  echo "Backup file: "${(%):-"%B${last}%b to %B${backup_path}%b"}

  cd $current_dir
}
