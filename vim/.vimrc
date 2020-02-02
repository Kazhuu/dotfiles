set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'scrooloose/nerdcommenter'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'junegunn/fzf.vim'
Plugin 'suoto/vim-hdl'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-bundler'
Plugin 'ngmy/vim-rubocop'
Plugin 'prettier/vim-prettier'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'arthurxavierx/vim-caser'
call vundle#end()

filetype plugin indent on

" Disable Background Color Erase (BCE) so that color schemes render properly.
set t_ut=

" Miscellaneous settings
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set mouse=          " disable mouse
set autoindent		" always set auto indenting on
set langnoremap
set encoding=utf-8
set number          " show line numbers
set hidden          " allow switch between buffers if not saved
set spell           " set spell checking
set backspace=indent,eol,start
set textwidth=0     " set no text width
set scrolloff=9999  " keep cursor on the middle all the time
set relativenumber  " Put on relative numbers.
syntax on           " syntax always on
set ignorecase      " do case-insensitive searches
set smartcase       " do case-sensitive search when capital letters are typed
set wildmode=full   " complete to next full match.
set wildmenu        " show available matches on top of command mode line.
set incsearch       " search incrementally.
set hlsearch        " highlights search
set cursorline      " highlight current line where cursor is
set nofoldenable    " disable folding.

" Vim swap and backup files to home different directory instead
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

" Search history like with up and down arrows which filter command history
" matching with already given input.
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" Make & in visual and normal mode to run last substitute command so that it
" reuses previous command flags.
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Use system clipboard instead of + and * registers
set clipboard=unnamedplus

" Remap <leader> key space. Defaults to backslash '\'
map <space> <leader>

" Coloschema settings
colors zenburn
" Set current tab background color to be lighter.
hi TabLineSel ctermbg=8

" Default indentation config
set tabstop=4
set shiftwidth=4
set noexpandtab

" Enable powerline fonts for airline status bar.
let g:airline_powerline_fonts = 1

" YouCompleteMe configuration
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_global_ycm_extra_conf = '.ycm_extra_conf.py' " Extra configuration if provided on project basis.

" Prettier configuration.
" Single quotes over double quotes.
let g:prettier#config#single_quote = 'true'
" Print spaces between brackets.
let g:prettier#config#bracket_spacing = 'true'
" Disable trailing commas.
let g:prettier#config#trailing_comma = 'none'
" Let file override configuration settings. This is needed if project has
" .editorconfig file and this is not set, then prettier settings are ignored.
let g:prettier#config#config_precedence = 'file-override'
" Disable autoformat with @format tag and format on buffer save.
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml PrettierAsync

" Syntastics settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 3
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_vhdl_checkers = ['vimhdl']
" Eslint from local installation.
let g:syntastic_javascript_eslint_exec = "./node_modules/.bin/eslint"
let g:syntastic_javascript_checkers = ['eslint']

" NERDTree settings
" Automatically open tree on start up
" autocmd vimenter * NERDTree
" Close vim automatically if tree is only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Automatically open tree when vim with opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Disable visual clutter.
let NERDTreeMinimalUI=1
" NERDTree toggle
noremap <C-n> :NERDTreeToggle<CR>
" Ingonore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$', '\.ko$', '\.o$', '\.so$', '\.mod\.c$', '\.order$', '\.symvers$', '^__pycache__$', '^node_modules$']

" Split navigations
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Go over wrapped visual lines like real lines.
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" Move faster than line by line.
nmap J 8j
nmap K 8k
xmap J 8j
xmap K 8k

" Tab related mappings
nnoremap <leader>a :tabnew<CR>
nnoremap <leader>x :tabclose<CR>
nnoremap <leader>h :tabfirst<CR>
nnoremap <leader>k :tabnext<CR>
nnoremap <leader>j :tabprev<CR>
nnoremap <leader>l :tablast<CR>
nnoremap <leader>n :tabm +1<CR>
nnoremap <leader>p :tabm -1<CR>

" Go to definition related mappings.
nnoremap <leader>g <C-]>

" Generate tags for current Python project.
nnoremap <leader>tp :! ctags -R --fields=+l --languages=python --python-kinds=-iv -f .tags ./<CR>
nnoremap <leader>tr :! ctags -R --languages=ruby --exclude=.git --exclude=log -f .tags ./<CR>

" FZF to runtime path
set rtp+=~/.fzf

" FZF.vim command shortcuts
nnoremap <C-F> :Ag<CR>
" Paste word under cursor and use Ag to search all files in current directory
nnoremap <leader>f :Ag <C-R><C-W><CR>
nnoremap <C-P> :Files<CR>
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Markdown preview settings
let vim_markdown_preview_hotkey='<C-M>'
let vim_markdown_preview_github=1

" Indent guides settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=238
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" vimhdl project config file.
let g:vimhdl_conf_file = 'vimhdl.prj'
