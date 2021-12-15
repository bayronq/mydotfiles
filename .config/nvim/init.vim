"LLama al tema de airline
source $HOME/.config/nvim/themes/airline.vim

"------------------- Plugins (VimPlug) -------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'vim-scripts/fountain.vim'
"Apariencia
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal.vim'

call plug#end()

"==================== Configuraciones Generales ============================

let mapleader = " "

let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Abrir terminal
map <F2> :belowright terminal<CR>
"Recargar configuraciones de neovim con Control+s
map <C-s> :source ~/.config/nvim/init.vim <CR>


"Guardar Archivos
nmap <leader>w :w <CR>
"Cerrar Ventana
nmap <leader>q :q <CR>



"simular scape
imap jk <Esc>
imap <C-c> <Esc>

"Mover bloques de código
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '<+1<CR>gv-gv

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Appearance {{{
    set encoding=UTF-8
    syntax on
    set clipboard=unnamed
    set mouse=a
    set autoread 
    set number " show line numbers
    set nu rnu  "ver la linea donde estamos
    set wrap " turn on line wrapping
    set wrapmargin=8 " wrap lines when coming within n characters from side
    set cursorline
    set linebreak " set soft wrapping
    set showbreak=↪
    set autoindent " automatically set indent of new line
    set ttyfast " faster redrawing
    set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
    set laststatus=2 " show the status line all the time
    set so=7 " set 7 lines to the cursors - when moving vertical
    set wildmenu " enhanced command line completion
    set hidden " current buffer can be put into background
    set showcmd " show incomplete commands
    set noshowmode " don't show which mode disabled for PowerLine
    set wildmode=list:longest " complete files like a shell
    set shell=$SHELL
    set cmdheight=1 " command bar height
    set title " set terminal title
    set showmatch " show matching braces
    set mat=2 " how many tenths of a second to blink
    set updatetime=300
    set signcolumn=yes
    set shortmess+=c

" Status Line (muestra el directorio y archivo actual editando)
    set statusline=
    set statusline+=\ %M
    set statusline+=\ %y
    set statusline+=\ %r
    set statusline+=\ %F

    " Colorscheme and final setup {{{
    " This call must happen after the plug#end() call to ensure
    " that the colorschemes have been loaded
    if filereadable(expand("~/.vimrc_background"))
        let base16colorspace=256
        source ~/.vimrc_background
    else
        let g:onedark_termcolors=16
        let g:onedark_terminal_italics=1
        source $HOME/.config/nvim/themes/onedark.vim
        "colorscheme onedark
    endif
    filetype plugin indent on
    " make the highlighting of tabs and other non-text less annoying
    highlight SpecialKey ctermfg=19 guifg=#333333
    highlight NonText ctermfg=19 guifg=#333333

    " make comments and HTML attributes italic
    highlight Comment cterm=italic term=italic gui=italic
    highlight htmlArg cterm=italic term=italic gui=italic
    highlight xmlAttrib cterm=italic term=italic gui=italic
    " highlight Type cterm=italic term=italic gui=italic
    highlight Normal ctermbg=none
" }}}

" vim:set foldmethod=marker foldlevel=0

