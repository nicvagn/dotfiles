# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
    pyenv
    zsh-autosuggestions
    alias-finder
    docker
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

### User configuration ###

## aliases ##
# pnpm
alias pm="pnpm"  
# python venv shortcuts
alias activate=". .env/venv/bin/activate"  # easily enter venv with activate
# power
alias down="shutdown -h now"
alias restart="shutdown -r now"
# dnf
alias up="sudo dnf upgrade"
alias get="sudo dnf install"
alias rem="sudo dnf remove"
# ff
alias ff="firefox"
# git
alias gs="gsw" # I have no idea what ghost script is
alias lg="g lg"
alias gpa="git push --all"
# random
alias svim="sudo vim"
alias top="htop"
alias .="source" # IDK, was not?
# nrv conf fin

# The following lines were added by compinstall

zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '|%d|'
zstyle ':completion:*:builtins' list-colors '=*=1;38;5;142'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' prompt '%e X'
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/nrv/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# tilix vte.sh crap
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi