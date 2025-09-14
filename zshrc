### OMZ configuration ###
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
    python
    pip
    pnpm-shell-completion
    safe-paste
    scala
    ssh
    zsh-autosuggestions
    alias-finder
    zsh-syntax-highlighting
    rust
)
source $ZSH/oh-my-zsh.sh
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
# Cntl + backspace to delete word
bindkey '^H' backward-delete-word

# modular af
source ~/.aliases

### System configuration ###
# tilix vte.sh crap
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# import systemctl --user
systemctl --user import-environment SSH_AUTH_SOCK
systemctl --user import-environment DISPLAY

# node version manager
export NVM_COMPLETION=true
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# enable .envrc dir environments
eval "$(direnv hook zsh)"
# enable virtualenvwrapper for "workon" and python venv management
## virtualenvwrapper for python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/git
export VIRTUALENVWRAPPER_WORKON_CD=1
source ~/.local/bin/virtualenvwrapper.sh

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

# -------------------------------
# Precmd hook: set PROMPT
# -------------------------------
autoload -Uz add-zsh-hook
add-zsh-hook precmd set_prompt_with_venv

set_prompt_with_venv() {
    PROMPT="$(show_venv_prompt)$BASE_PROMPT"
}

# dir env activation
#  LocalWords:  virtualenvwrapper compinstall crcandy OMZ
