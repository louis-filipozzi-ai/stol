# Shell integration for `stol tui`.
#
# Source this file from your shell config (bash and zsh both work):
#   source ~/.local/share/stol/stol-tui.bash
#
# Then run `stui` to browse your worktrees interactively and cd into the one
# you select. Nothing happens if you quit with q.

stui() {
  local dest
  dest="$(stol tui "$@")" || return 1
  [ -n "$dest" ] && cd "$dest"
}
