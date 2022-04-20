
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" tab completion
Plugin 'ervandew/supertab'

" Browse files quickly
Plugin 'scrooloose/nerdtree'

" Check syntax errors
Plugin 'Syntastic'

" Airline fancy status bar
Plugin 'vim-airline/vim-airline'

" Git information
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
" Put your non-Plugin stuff after this line

" Nerdtree key mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" syntastic basics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Syntastic checkers
"let g:syntastic_r_checkers = ['lint']
let g:syntastic_r_checkers=['syntastic-checkers-r']


" For formatting Python scripts in autopep8 style (command: gq)
autocmd FileType python setlocal formatprg=autopep8\ - expandtab tabstop=4 shiftwidth=4
autocmd FileType python colorscheme onedark

" For formatting R scripts
autocmd FileType r setlocal shiftwidth=2 tabstop=4 expandtab
autocmd FileType r colorscheme onedark

" Bash-specific formatting rules
autocmd FileType sh setlocal shiftwidth=2 tabstop=2 expandtab
" autocmd FileType sh colorscheme gruvbox

" for tmux
set background=dark
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" for ease of coding
set number
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
syntax on
