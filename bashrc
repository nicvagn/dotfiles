# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac
# --------- oh my bash ---------------

# Path to your oh-my-bash installation.
export OSH='/home/nrv/.oh-my-bash'
# Set omb to be able to use sudo
OMB_USE_SUDO=false

OSH_THEME="vscode"

OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
OMB_CASE_SENSITIVE="true"

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
  nrv
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

#------ NRV -------
# open new terminal in the same dir old terminal is in when spliting term 
source /etc/profile.d/vte.sh

# having LESS set fuck's w stuff
unset LESS

export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-21.0.2.0.13-1.fc39.x86_64"

export EDITOR='vim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
# export PATH with yarn global bin
export PATH="$(yarn global bin):$PATH"
# add lua language server to the path
export PATH="$HOME/tools/lua-language-server/bin:$PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

