call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'bitc/vim-bad-whitespace'
Plug 'vim-syntastic/syntastic'
Plug 'jnurmine/Zenburn'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'scrooloose/nerdcommenter'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'suoto/vim-hdl'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'arthurxavierx/vim-caser'
Plug 'petRUShka/vim-opencl'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-clang-format'
Plug 'flatcap/vim-local'
Plug 'rhysd/vim-llvm'
 "Web development support.
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
" Editorconfig support.
Plug 'editorconfig/editorconfig-vim'
" Coffee support.
Plug 'kchmck/vim-coffee-script'
" Rust support.
Plug 'rust-lang/rust.vim'
call plug#end()

syntax enable
filetype plugin indent on

" Automatically installed CoC extensions.
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-solargraph', 'coc-html', 'coc-prettier', 'coc-rust-analyzer']

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
set scrolloff=50 " keep cursor on the middle all the time
"set relativenumber  " Put on relative numbers.
set ignorecase      " do case-insensitive searches
set smartcase       " do case-sensitive search when capital letters are typed
set wildmode=full   " complete to next full match.
set wildmenu        " show available matches on top of command mode line.
set incsearch       " search incrementally.
set hlsearch        " highlights search
set cursorline      " highlight current line where cursor is
set nofoldenable    " disable folding.
set equalalways     " always equal size splits.

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

" Remap <leader> key space. Defaults to backslash '\'
map <space> <leader>

" Coloschema settings
colors zenburn
" Set current tab background color to be lighter.
hi TabLineSel ctermbg=8

" Default indentation config
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

" Enable powerline fonts for airline status bar.
let g:airline_powerline_fonts = 1

" Syntastics settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 3
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_vhdl_checkers = ['vimhdl']
" Eslint from local installation.
let g:syntastic_javascript_eslint_exec = "./node_modules/.bin/eslint"
let g:syntastic_javascript_checkers = ['eslint']

" netrw file explorer settings.
" Open netrw at root of the project.
noremap <C-n> :e.<CR>
" Open netrw from current buffer folder.
noremap <C-m> :Explore<CR>

" Override netrw buffer keybindings with my own.
" https://vi.stackexchange.com/questions/5531/how-to-remap-i-in-netrw
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

" My own netrw buffer keybindings here.
function! NetrwMapping()
    nmap <buffer> gh <C-w>h
endfunction

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
" Duplicate current file to new tab.
nnoremap <leader>A :tabnew %<CR>
nnoremap <leader>x :tabclose<CR>
nnoremap <leader>h :tabfirst<CR>
nnoremap <leader>k :tabnext<CR>
nnoremap <leader>j :tabprev<CR>
nnoremap <leader>l :tablast<CR>
nnoremap <leader>n :tabm +1<CR>
nnoremap <leader>p :tabm -1<CR>

" Go to definition related mappings.
nnoremap <leader>g <C-]>

" Generate tags.
nnoremap <leader>tp :! uctags -R --fields=+l --languages=python --python-kinds=-iv ./<CR>
nnoremap <leader>tr :! uctags -R --languages=ruby --exclude=.git --exclude=log ./<CR>
nnoremap <leader>tc :! uctags -R --c++-kinds=+p --fields=+iaS --extras=+q ./<CR>

" Copy current file path to + register.
nmap cp :let @+ = expand("%")<CR>
" Copy current file path and line number to + register.
nmap <leader>cp :let @+ = 'rails test ' . join([expand('%'), line(".")], ':')<CR>
nmap <leader>rcp :let @+ = 'bundle exec rspec ' . join([expand('%'), line(".")], ':')<CR>

" CoC prettier settings.
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" FZF to runtime path
set rtp+=~/.fzf

" Make fzf to respect gitignore.
let $FZF_DEFAULT_COMMAND = 'fd --type f'
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

" Coc related settings.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Show all diagnostics.
nnoremap <silent> <space>s :<C-u>CocList diagnostics<cr>

" Coc-clangd settings.
" Switch between header and source files.
nnoremap <silent> <leader>qs :<C-u>CocCommand clangd.switchSourceHeader<cr>

" vimhdl project config file.
let g:vimhdl_conf_file = 'vimhdl.prj'

" vim-llvm settings:
" Disable default key bindings.
let g:llvm_ext_no_mapping = 1
" Define own go to definition for LLVM IR instructions.
autocmd FileType llvm nmap <buffer><silent>gd <Plug>(llvm-goto-definition)

" Don't show braces inside of square brackets as an error.
" https://github.com/vim-jp/vim-cpp/issues/16
let c_no_curly_error = 1

" Vimlocal settings.
" Autoload local configuration file because it's not done by default.
autocmd BufNewFile,BufRead * call LoadVimLocal()
" Name of the file to read.
let g:vimlocal_file = '.vimlocal'
" Don't descent too many parent directories.
let g:vimlocal_max_depth = 5

" Latex preview settings.
let g:livepreview_engine = 'xelatex'

" Rust configuration.
let g:rustfmt_autosave = 1
