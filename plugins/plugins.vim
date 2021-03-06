""""""""""""""""""""""""""""""""""""""""
" Plugins


set nocompatible

call plug#begin('~/.vim/plugged')


"Temas
"Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'

"Autocompletado
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'


"Barra de estado
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'


"Arbol de archivos
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


"IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'


call plug#end()


"Configuraciones de plugins
colorscheme palenight
let g:gruvbox_contrast_dark = 'hard'
