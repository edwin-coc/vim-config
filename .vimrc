""""""""""""""""""""""""""""""""""""""""
" CONFIGURACION


"Establece cuantas lineas de historial debe recordar vim
set history=500


"Habilita complementos de tipo de archivo
filetype plugin on
filetype indent on


"Establece una tecla leader
let mapleader='-'


"Evita los caracteres confusos del sistema operativo en idioma chino
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


"Habilita el menu wild
set wildmenu


"Mostrar siempre la posicion actual
set ruler


"Altura de la barra de comandos
set cmdheight=2


"Configura el retroceso para que actue como deberia de actuar
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


"Ignora mayúsculas y minúsculas al buscar
set ignorecase


"Habilita el modo inteligente al buscar
set smartcase


"Resalta los resultados de la busqueda
set hlsearch


"Hace que la búsquda actue como una búsqueda en los navegadores modernos
set incsearch


"Magia para expresiones regulares
set magic


"Mostrar corchetes coincidentes cuando el indicador de texto este sobre ellos
set showmatch


"Establece cuantas decimas de segundo parpadea al hacer coincidir los
"corchetes
set mat=2


"Agrega un poco mas de margen a la izquierda
set foldcolumn=1


"Habilita el resaltado de sintaxis
syntax enable


"Habilita la paleta de 256 colores para la barra de estado
if !has('gui_running')
    set t_Co=256
endif
set background=dark

"Establesca utf-8 como codificador estandar y en_US como idioma estandar
set encoding=utf8


"Desactiva las copias de seguridad
set nobackup
set nowb
set noswapfile


"Use espacios en lugar de tabs
set expandtab


"Pestañas inteligentes
set smarttab


" 1 tab == 4 espacios
set shiftwidth=4
set tabstop=4


"Salto de linea en 500 caracteres
set lbr
set tw=500


"Habilita la sangria automatica
set ai


"Habilita la sangri inteligente
set si


"Envolver lineas
set wrap


"Mostras siempre la linea de estado
set laststatus=2


"Enumera las filas
set number


"Establece el ancho de los numeros
set numberwidth=1


"Habilita numeros relativos
set relativenumber


"Permite interactuar con el mouse dentro de vim
set mouse=a


"Habilita el clipboard
set clipboard=unnamed


so ~/.config/nvim/plugins/plugins.vim
so ~/.config/nvim/commands/commands.vim
so ~/.config/nvim/terminal/terminal.vim
