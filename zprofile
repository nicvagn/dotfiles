export EDITOR='emacsclient -c'

export PATH=/home/nrv/.local/bin:$PATH

# pnpm
export PNPM_HOME="/home/nrv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
