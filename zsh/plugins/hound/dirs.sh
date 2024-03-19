# ===== DIRS commands =====

# create dir and enter to it
function mdcd() {
  mkdir "$1"
  cd "$1"
}

# remove current dir
function rmcd() {
    local current=${PWD}

    if ! read -q "choice?Remove "${current}"?"; then
      return
    fi
    echo "???"


    cd ..
    rm -rf ${current}
    echo ${(%):-"%B${current:a}%b deleted."}
}