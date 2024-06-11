# ===== PATH commands =====

# Copies obsolete the path of given directory or file to the system or X Windows clipboard.
# Copy current_config directory if no parameter.
function pwd_copy_abs {
  # If no argument passed, use current_config directory
  local file="${1:-.}"

  # If argument is not an absolute path, prepend $PWD
  [[ $file = /* ]] || file="$PWD/$file"

  # Copy the absolute path without resolving symlinks
  # If clipcopy fails, exit the function with an error
  print -n "${file:a}" | clipcopy || return 1

  echo ${(%):-"%B${file:a}%b copied to clipboard."}
}

# Copies relative the path of given directory or file to the system or X Windows clipboard.
# Copy current_config directory if no parameter.
function pwd_copy_rel {
  # If no argument passed, use current_config directory
  local file="${1:-.}"

  # If argument is not an absolute path, prepend $PWD
  [[ $file = /* ]] || file="$PWD/$file"

  local result=${file#"$PWD"}
  if [[ $result = "/." ]]
  then
    result="."
  else
    result="${result/\//./}"
  fi

  # Copy the absolute path without resolving symlinks
  # If clipcopy fails, exit the function with an error
  print -n "${result}" | clipcopy || return 1

  echo ${(%):-"%B${result}%b copied to clipboard."}
}
