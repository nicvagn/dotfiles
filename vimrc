" my native vimrc

" ===== key mappings ====
" nnoremap - normal mode only, non-recursive
" noremap - non-recursive most modes
" | leader |
let mapleader = "\<Space>"

nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>

" | buffer |
nnoremap <A-[> :bp<CR>
nnoremap <A-]> :bn<CR>

" delete a line w cc 
noremap cc dd
noremap c d 

" enter in normal mode inserts a blank line on next line
nnoremap <CR> <esc>o
" tab shift line right in normal mode
nnoremap <^I> :><CR>

" | navigation |
" navigation
" normal mode
noremap d h
noremap t j
noremap h k
noremap e l

" visual mode
xnoremap d h
xnoremap t j
xnoremap h k
xnoremap e l

" visual block mode
" ==== end key mappings ====

vnoremap d h
vnoremap t j
vnoremap h k
vnoremap e l

set laststatus=2
" status line start
function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set statusline=%#Status3#
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot
" status line end

" no backwards compatibility
set nocompatible

let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise


" no more .swp clutter
let &directory = expand('~/.vimdata/swap//')

set backup
let &backupdir = expand('~/.vimdata/backup//')

set undofile
let &undodir = expand('~/.vimdata/undo//')

if !isdirectory(&undodir) | call mkdir(&undodir, "p") | endif
if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
if !isdirectory(&directory) | call mkdir(&directory, "p") | endif

" Filetype detect
filetype on

" leet coding shit
filetype plugin on
filetype indent on
syntax on
set number

" for my blind ass
set cursorcolumn

" tab shinanigans
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set nowrap


" when searching, incrementaly highlight letters
set incsearch
" and ignore case
set ignorecase
" highlight as we search
set hlsearch
" exept with only capitals
set smartcase
" show matchew when searching
set showmatch
" show what mode we are in
set showmode

" commands to save
set history=500

" wildmenu stuff
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
