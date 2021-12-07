""""""""""""""""""""""""""""""""""""""""
" COMANDOS PERSONALIZADOS


"Comando para guardar una archivo
nmap <leader>w :w!<cr>


"Comando para salir de vim
nmap <leader>q :q<cr>


"Comando para moverse entre ventanas
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l


"Mapeos utiles para administrar pestañas
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext


"Mover una linea de texto con el comando ALT + [jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


"Abrir el arbol de archivos
nmap <leader>< :NERDTreeFind<cr>


"Comando para cambiar el tamaño de las pestañas
nnoremap <leader>a 10<C-w>>
nnoremap <leader>d 10<C-w><


"Elimina espacios en blanco final al guardar
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif
