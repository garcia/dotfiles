set autoindent
set backspace=2
if version >= 730
    set cryptmethod=blowfish
endif
set expandtab
set incsearch
set laststatus=2
set nocompatible
set number
set ruler
set shiftwidth=4
set showcmd
set so=5
set softtabstop=4
set tabstop=4
set t_Co=256

set statusline=
"set statusline +=%1*\ %n\ %*           "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ \ %*           "virtual column number
set statusline +=%2*0x%04B%*            "character under cursor

syntax on

map <F12> <Esc>
imap <F12> <Esc>
cnoreabbrev W w
cnoreabbrev Q q
autocmd FileType make setlocal noexpandtab

let &titlestring = expand("%:t")
if &term == "screen" || &term == "screen-256color-bce"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "screen-256color-bce" || &term == "xterm"
  set title
endif

function! ResetTitle()
    exec "set title t_ts='' t_fs=''"
    exec ":!echo -e '\033kbash\033\\'\<CR>"
endfunction
au VimLeave * silent call ResetTitle()

nnoremap <F11> :set invpaste paste?<CR>
set pastetoggle=<F11>
set showmode

map N Nzz
map n nzz

colorscheme jellybeans2

command! VV source $MYVIMRC
