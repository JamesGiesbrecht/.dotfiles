# === OH MY ZSH ===

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH Theme https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Oh My ZSH config init
source $ZSH/oh-my-zsh.sh

# === PLUGINS ===

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# === ALIASES ===

# Edit files in VSCode
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Flush DNS cache
alias fdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Show local ip
alias localip="ipconfig getifaddr en0"

# Copy public key to clipboard:
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Reload Shell
alias reload="exec ${SHELL}"

# Git
alias yeet='git push'
alias yoink='git pull'
# Changes environment variables associated with commits
# git change-commits GIT_AUTHOR_NAME "old name" "new name"
# Change last 10 commits
# git change-commits GIT_AUTHOR_EMAIL "old@email.com" "new@email.com" HEAD~10..HEAD
alias change-commits='!f() { VAR=$1; OLD=$2; NEW=$3; shift 3; git filter-branch --env-filter \"if [[ \\\"$`echo $VAR`\\\" = '$OLD' ]]; then export $VAR='$NEW'; fi\" \$@; }; f '

# === EXPORTS ===

# Editor
export EDITOR=$(which code)

# Homebrew
export HOMEBREW_NO_ANALYTICS=1 # disables statistics that brew collects

# Enables ANSI color in the terminal
export CLICOLOR=1

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.6.0_65-b14-462)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Directories
export ICLOUD="~/Library/Mobile Documents/com~apple~CloudDocs/"
export DOTFILES="~/.dotfiles"

# === FUNCTIONS ===

# SSH into docker container
# dockerssh <container_name>
dockerssh() {
  docker exec -it "$1" bash
}

# Find process by PID
# ppid <pid>
pidid() {
  ps -ax | grep "$1"
}

# Create a new directory and enter it
# mc <dir_name>
mc() {
  mkdir -p "$@" && cd "$@"
}

# Shows pretty `man` page.
# From Dan Ryan's blog - http://danryan.co/using-antigen-for-zsh.html
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

# Loads `.env` file from a filename passed as an argument
# loadenv <filename>
loadenv() {
  while read line; do
    if [ "${line:0:1}" = '#' ]; then
      continue # comments are ignored
    fi
    export $line >/dev/null
  done <"$1"
  echo 'Loaded!'
}

# Flush DNS cache
flushdns() {
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

# === MISC ===

# Required for pythonw to run Amulet Map Editor
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
  else
    export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Bashhub.com bash history
if [ -f ~/.bashhub/bashhub.zsh ]; then
  source ~/.bashhub/bashhub.zsh
fi

# https://github.com/pindexis/qfc file path auto-completion
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
