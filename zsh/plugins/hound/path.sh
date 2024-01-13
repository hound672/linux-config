# ===== PATH commands =====

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
