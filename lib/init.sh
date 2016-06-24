pushd() {
  command -- pushd &>/dev/null "$@"
}

popd() {
  command -- pushd &>/dev/null
}

xenv_exec() {
  local cmd="$1"
  shift
  local cmd_file="$XENV_ROOT/libexec/xenv-$cmd"
  if [ ! -e "$cmd_file" ]; then
    echo "xenv: command not found: $cmd"
    exit 1
  fi
  command -- "$cmd_file" "$@"
}

read_line() {
  local var="$1"
  local file="$2"
  read -r "$var" < "$file"
}

list_dir() {
  local var="$1"
  local path="$2"
  local result=()
  shopt -s nullglob
  for f in "$path/"*; do
    local fname="${f##*/}"
    result+=("$fname")
  done
  "$var"=$result
}

export -f pushd
export -f popd
export -f xenv_exec
export -f read_line

