# start time learning
#start_t = $(date + "%Y-%m-%d-%H-%M-%S")
start_t=$(date +"%s")

# set path for tty
if [ "$XDG_SESSION_TYPE" = "tty" ]; then
  echo "Running in a TTY"
  export PATH="/home/nrv/.local/bin:$PATH"
fi

### OMZ configuration ###
setopt auto_cd
# Let globs expand to themselves if no files match
setopt NONOMATCH
# more zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
# local stuff I found on gh
fpath+=/home/nrv/.local/share/zsh/completions
# why we use OMZ
ZSH_THEME="crcandy"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"
zstyle ':omz:update' frequency 13
# OMZ plugins
plugins=(
    git
    pip
    pnpm-shell-completion
    scala
    ssh
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-syntax-highlighting
    alias-finder
    rust
)

source $ZSH/oh-my-zsh.sh
echo "Initialized OMZ, $(($(date +'%s') - $start_t)) spent"
# nrv conf fin
# The following lines were added by compinstall
zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '|%d|'
zstyle ':completion:*:builtins' list-colors '=*=1;38;5;142'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3 # changed from 2
zstyle ':completion:*' prompt '%e X'
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/nrv/.zshrc'
autoload -Uz +X compinit
compinit
# End of lines added by compinstall

### User configuration ###
## keybindings ##
# showkey -a to discover names
bindkey -e # Emacs bindings

# Cntl + backspace to delete word
# Word delete
bindkey -M emacs '^[\x7f' backward-delete-word

# Autosuggestions
bindkey -M emacs '\e[15~' autosuggest-accept        # F5

# History substring search
bindkey -M emacs '\e[17~' history-substring-search-up   # F6
bindkey -M emacs '\e[18~' history-substring-search-down # F7


# modular AF
source ~/.aliases
echo "sourced aliases, $(($(date +'%s') - $start_t)) spent"

### System configuration ###
# tilix vte.sh crap
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
        echo "sourced /etc/profile.d/vte.sh, $(($(date +'%s') - $start_t)) spent"
fi

# import systemctl --user
systemctl --user import-environment SSH_AUTH_SOCK
systemctl --user import-environment DISPLAY
echo "DISPLAY: ($DISPLAY), SSH_AUTH_SOCK: ($SSH_AUTH_SOCK)"
echo "Initialized systemctl user env, $(($(date +'%s') - $start_t)) spent"

# node version manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
echo "Initialized nvm env, $(($(date +'%s') - $start_t)) spent"

# enable .envrc dir environments
eval "$(direnv hook zsh)"
echo "Initialized direnv hook, $(($(date +'%s') - $start_t)) spent"
# enable virtualenvwrapper for "workon" and python venv management
## virtualenvwrapper for python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/git
export VIRTUALENVWRAPPER_WORKON_CD=1
source /usr/bin/virtualenvwrapper.sh
echo "set up VIRTUALENVWRAPPER, $(($(date +'%s') - $start_t)) spent"
# -------------------------------
# Base prompt (without venv)
# -------------------------------
if [ -z "$BASE_PROMPT" ]; then
    BASE_PROMPT="$PROMPT"
fi

# -------------------------------
# Show active virtualenv
# -------------------------------
show_venv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        local venv_name="($(basename $VIRTUAL_ENV))"
        echo "%F{green}${venv_name}%f "
    else
        echo ""
    fi
}

show_distrobox_container() {
    if [ -n "$CONTAINER_ID" ]; then
        echo "%F{220}[${CONTAINER_ID}]%f"
    else
        echo ""
    fi
}

set_prompt() {
    PROMPT="$(show_distrobox_container)$(show_venv_prompt)$BASE_PROMPT"
}

# -------------------------------
# Precmd hook: set PROMPT
# -------------------------------
autoload -Uz add-zsh-hook
add-zsh-hook precmd set_prompt

echo "Initialized precmd set_prompt_with_venv, $(($(date +'%s') - $start_t)) spent"
# dir env activation
#  LocalWords:  virtualenvwrapper compinstall crcandy OMZ basename
#  LocalWords:  showkey
