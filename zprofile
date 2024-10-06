# lua path stuff
export LUA_PATH='/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;/usr/lib64/lua/5.4/?.lua;/usr/lib64/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/home/nrv/.luarocks/share/lua/5.4/?.lua;/home/nrv/.luarocks/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/lib64/lua/5.4/?.so;/usr/lib64/lua/5.4/loadall.so;./?.so;/home/nrv/.luarocks/lib64/lua/5.4/?.so'
# add luarocks and cargo to the PATH
export PATH='/home/nrv/.cargo/bin:home/nrv/.luarocks/bin:/home/nrv/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin'

export EDITOR='nvim'
export PAGER='nvim +Man!'
export MANPAGER='nvim +Man!'

# pnpm
export PNPM_HOME="/home/nrv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
