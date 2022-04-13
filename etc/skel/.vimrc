source /usr/share/vim/vim82/defaults.vim
set syntax=on
set mouse=r

" PowerLine Fonts
let g:airline_powerline_fonts = 1

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" FZF integration
"set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
