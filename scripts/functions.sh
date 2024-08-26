err() {
  echo "$1" >&2
}

die() {
  local msg="${1:-Died}"
  local stack

  # shellcheck disable=SC2207
  if stack=($(caller 0)); then
    err "${msg} at ${stack[2]} line ${stack[0]}."
  else
    err "${msg}."
  fi
  exit 1
}

print_stacktrace() {
  local index=0 stack

  err "Traceback (most recent call first):"
  # shellcheck disable=SC2207
  while stack=($(caller "${index}")); do
    local line="${stack[0]}" sub="${stack[1]}" file="${stack[2]}"
    err "  ${file}, line ${line}, in ${sub}"
    ((index++))
  done
}

call_unless_flag_exists() {
  local flag_path="$1" func_name="$2"

  if [[ -e "${flag_path}" ]]; then
    return
  fi

  if (${func_name}); then
    sudo touch "${flag_path}"
  fi
}
