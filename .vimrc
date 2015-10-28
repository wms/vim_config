set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/vim_config/bundle/vundle/
set rtp+=~/vim_config/snippets
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'MarcWeber/vim-addon-local-vimrc'
Bundle 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'mhinz/vim-startify'
Bundle 'groenewege/vim-less'
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "wesgibbs/vim-irblack"
Bundle "brookhong/DBGPavim"
Bundle "mehlah/vim-li3"
Bundle "Quramy/tsuquyomi"
Bundle 'editorconfig/editorconfig-vim'

syntax on
filetype plugin indent on

" common

" prevent generation of .swp and other gubbins
set nobackup
set nowritebackup
set noswapfile

" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" use a forward-slash in paths under win
set shellslash

" make command line two lines high
set ch=2

" disable audible bell
set vb

" allow backspacing over indent, eol, and the start of an insert
set backspace=2

" make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" drop a marker at the end of a change area (ie using 'cw') instead of
" deleting it
set cpoptions=Bces$

" always show status line, even if only one window
set laststatus=2

" show current command (leader key, etc) in lower right
set showcmd

" scroll when 4 lines from top or bottom
set scrolloff=4

" allow the cursor to go in to "invalid" places
set virtualedit=all

" span command-line completions horizontally
set wildmenu

" get rid of the characters in window separators
set fillchars=""

" represent tabs as 4 spaces
set tabstop=4
set shiftwidth=4

" enable search highlighting
set hlsearch
" search for matches as we type
set incsearch

" show line numbers
set number

" show preview and help window at bottom
set splitbelow

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" /common

" gui

colo lithium

if has("gui_running")
    set background=dark
    set guifont=Source\ Code\ Pro\ For\ Powerline:h14
endif

" hide the mouse pointer while typing
set mousehide

" set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" display simple options as console text
set guioptions=c

" show/hide current line highlight
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" /gui

" key bindings

" set leader to ,
let mapleader = ","

" jump to eol in insert mode with C-]
inoremap <C-]> <End>

" jump to current error with ,l
map <leader>l :ll<CR>

" /key bindings

" plugins

" powerline
set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
" ctrlp
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0

" indent guides
if has("gui_running")
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_color_change_percent = 3
endif

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delitMate_balance_matchpairs = 1
let g:delimitMate_matchpairs = "(:),[:],{:}"

" syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_less_use_less_lint = 1
let g:syntastic_html_checkers = []

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

" emmet
let g:user_emmet_leader_key='<C-e>'

" YCM doesn't play nice with emmet, so disable it for html as a workaround
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'unite' : 1,
      \ 'html' : 1,
      \}

let g:UltiSnipsSnippetsDir = "~/vim_config/snippets/"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
