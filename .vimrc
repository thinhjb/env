set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

set history=700

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""
" Set colors
colorscheme neodark
let g:neodark#background='black'
set t_Co=256
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteme Configurations
let g:ctrlp_clear_cache_on_exit = 0
let g:ycm_global_ycm_extra_conf = '~/'
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

set completeopt-=preview
set pumheight=15

" Highlight YouCompleteMe Popups
highlight Pmenu ctermfg=grey ctermbg=black
highlight PmenuSel ctermfg=black ctermbg=grey
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" Set Status bar options
set laststatus=2
set statusline=
set statusline+=%<%F			"path
set statusline+=[%n]%r%m
set statusline+=%=[r:%l/%L]	"Rownumber/total (%)
set statusline+=[c:%c](%3p%%)	"Column #
highlight StatusLine ctermfg=black ctermbg=grey cterm=bold
highlight StatusLineNC ctermfg=black ctermbg=grey
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" Highlight tabs
highlight TabLineFill ctermfg=black ctermbg=black cterm=bold
highlight TabLine ctermfg=grey ctermbg=black
highlight TabLineSel ctermfg=black ctermbg=grey
highlight Title ctermfg=grey ctermbg=black
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" ctags options
set autochdir
set tags=./tags,tags;$HOME,/home/jay/kernels/linux/tags

"""""""""""""""""""""""""""""""""""""""""""""""
" Resize window
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) * 2/3)<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" Change comment coloring
highlight Comment ctermfg=37 cterm=none
highlight Statement ctermfg=214 cterm=none
highlight Search ctermfg=black ctermbg=yellow
highlight Constant ctermfg=203
highlight PreProc ctermfg=133

highlight Error None

" highlight fold color
highlight Folded ctermbg=black

" highlight Visual
highlight Visual ctermbg=grey ctermfg=black

" Set interractive command
set shellcmdflag=-ic

" Highlight trailing whitespaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Show leading whitespace that includes spaces, and trailing whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" ignore case when search
set ignorecase

" Highlight search
set hlsearch

" Highlight all search result on page
set incsearch

" Turn off sounds
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Turn off backup, no need for SWAP file
set nobackup
set nowb
set noswapfile

set shell=/bin/bash\ --rcfile\ ~/.bashrc

"""""""""""""""""""""""""""""""""""""""""""""""
" set tab length
set noexpandtab
set shiftwidth=8
set tabstop=8

"""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*.o,*.aa

""""""""""""""""""""""""""""""""""""""""""""""""
" Set relative line number
set rnu
highlight LineNr ctermfg=grey ctermbg=black
highlight CursorLineNr ctermfg=white ctermbg=black
""""""""""""""""""""""""""""""""""""""""""""""""

" set wrapped lines as break lines
map j gj
map k gk

"""""""""""""""""""""""""""""""""""""""""""""""

" Disable highlight when press \ and enter
map <silent> <leader><cr> :noh<cr>

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

set backspace=2
set backspace=indent,eol,start,

" Automatically pops up quickfix window to open any grep
autocmd QuickFixCmdPost *grep* cwindow

"command -nargs=0 Format call FormatCode()
