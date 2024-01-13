# ===== TMUX commands =====

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
