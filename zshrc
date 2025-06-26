### OMZ configuration ###
# more zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
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
)
source $ZSH/oh-my-zsh.sh
### User configuration ###
## keybindings ##
# showkey -a to discover names
# Cntl + backspace to delete word
bindkey '^H' backward-delete-word

# modular af
source ~/.aliases

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

autoload -Uz compinit
compinit
# End of lines added by compinstall

### System configuration ###
# tilix vte.sh crap
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# node version manager
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# java home
export JAVA_HOME=$(which java)

# enable virtualenvwrapper for "workon" and python venv managment
source ~/bin/virtualenvwrapper.sh

