#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ========================
# Aliases
# ========================
alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
alias cls='clear'
alias vim='nvim'
alias vi='nvim'
alias cooxeo='tmux new -s cooxeo'
alias code='tmux new -s code'
alias shell='tmux new -s shell'
alias bctl='bluetoothctl'
alias cw='cowsay'

tmx() {
  i=1
  while tmux has-session -t "$i" 2>/dev/null; do
    i=$((i+1))
  done
  tmux new -s "$i"
}


parse_git_branch() {
    git branch --show-current 2>/dev/null
}

git_dirty() {
    if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null; then
        printf ""
    fi
}

PS1="\[\e[38;2;95;95;95m\]\w\$(git rev-parse --is-inside-work-tree >/dev/null 2>&1 && printf '  %s%s' \"\$(parse_git_branch)\" \"\$(git_dirty)\") \[\e[38;2;150;150;150m\]>\[\e[0m\] "



# PS1="\[\e[38;2;166;218;149m\]cooxeo\
# \[\e[38;2;120;120;120m\] \
# \[\e[38;2;97;175;239m\]\w \
# \$(if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then \
# printf '\[\e[38;2;255;184;108m\] %s%s ' \"\$(parse_git_branch)\" \"\$(git_dirty)\"; \
# fi)\
# \[\e[38;2;139;233;253m\]❯\[\e[0m\] "

fs() {
  local start_dir="${1:-$PWD}"
  local file
  file=$(find "$start_dir" -type f 2>/dev/null \
    | sk --preview="bat --style=numbers --color=never {}" \
         --preview-window=right:50%:wrap:noborder \
         --margin 10% --color="bw") || return
  [ -n "$file" ] && nvim "$file"
}

ff() {
  local start_dir="${1:-$PWD}"
  local dir
  dir=$(find "$start_dir" -type d 2>/dev/null \
    | sk --margin 10% --color="bw" \
         --preview-window=hidden) || return
  [ -n "$dir" ] && cd "$dir"
}

fh() {
  history |
    sed 's/ *[0-9]\+ *//' |
    sk --color="bw" --tac --preview="echo {}" |
    xargs -r -I{} sh -c "{}"
}

# ========================
# PATH
# ========================
export PATH="$HOME/.config/scripts:$PATH"

# ========================
# History settings
# ========================
HISTFILE=~/.bash_history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
shopt -s cmdhist
shopt -s histverify

# Arrow key history search (type start of command + Up/Down)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'




