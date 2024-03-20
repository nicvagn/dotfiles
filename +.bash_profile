# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

# >>> coursier install directory >>>
export PATH="$PATH:/home/nrv/.local/share/coursier/bin"
# <<< coursier install directory <<<
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
