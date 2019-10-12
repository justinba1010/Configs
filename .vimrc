set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set linebreak
syntax enable
set wrap
set title
set ttymouse=xterm2
set mouse=a
set nu
set nornu
set ruler

source ~/.vimrc_reason

set shortmess=a
set cmdheight=2
set wildmenu
set directory=$HOME/.vim/swapfiles/
map git :! git add src __tests__ &&  git commit -S -m "Auto-Log [ci skip]" && git push
map circ :! git commit --allow-empty -S -m "CircleCI run" && git push

map yj :! yarn jest

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

colorscheme gruvbox
set background=dark    " Setting dark mode

xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)
set splitbelow
set splitright
