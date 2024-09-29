# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="afowler"
ZSH_THEME="jaischeema" # -- hostname and path, one line
# ZSH_THEME="lukerandall" -- compact, no git diff
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

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

# shell shortcuts
alias lg="g lg"
alias vim="nvim"
alias svim="sudo vim"
alias ff="firefox"
alias add="sudo dnf install"
alias get="sudo dnf install"
alias rem="sudo dnf remove"
alias up="sudo dnf update"
alias down="shutdown -h now"

NRV_PATH="$HOME/tools:$(yarn global bin):$HOME/.local/bin:$HOME/bin:$PATH" 
# export PATH with yarn global bin and add lua language server to the path
# and the kichen sink
if ! [[ "$PATH" =~ "$NRV_PATH" ]]; then
    PATH=$NRV_PATH
fi

# tell SDKMAN where it lives
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
