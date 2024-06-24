# zsh candy
ZSH_THEME="crcandy"

#CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' frequency 13

ENABLE_CORRECTION="true"

# OMZ plugins
plugins=(
    git
    python
    pyenv
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

### User configuration ###

## aliases ##
# make it easy to enter NicLink environment
alias nl_env=". ~/NicLink/activate"
alias lg="g lg"
alias vim="nvim"
alias add="sudo pacman -S"
alias get="sudo pacman -S"
alias rem="sudo pacman -R"
alias del="sudo pacman -R"
alias firefox="firefox-developer-edition"
alias .="source" # IDK, was not?
alias sudo="nocorrect sudo " # sudo vim was causing autocorect to fire

# tilix vte.sh crap
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
