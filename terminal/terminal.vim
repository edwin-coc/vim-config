set splitright
function! OpenTerminal()
    execute 'normal \<C-l>'
    execute 'normal \<C-l>'
    execute 'normal \<C-l>'
    execute 'normal \<C-l>'
    let bufNow = bufnr('%')
    let bufType = getbufvar(bufNow, '&buftype', 'not found')

    if bufType == 'terminal'
        execute 'q'
    else
        execute 'vsp term://cmd'
        execute 'set nonu'
        execute 'set nornu'
        silent au BufLeave <buffer> stopinsert!
        silent au BufWinEnter,WinEnter, <buffer> startinsert!

        execute 'tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>'
        execute 'tnoremap <buffer> <C-t> <C-\\><C-n>:q<cr>'
        execute 'tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>'

        startinsert!
    endif

endfunction
nnoremap <C-t> :call OpenTerminal()<cr>
