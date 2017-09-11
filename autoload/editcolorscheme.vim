
function! editcolorscheme#init(colorname)
    let s:term = call('term_start', ['vim', {'vertical':1}])
    execute(
        \    'autocmd BufWritePost * '
        \ .  "call editcolorscheme#update('"
        \ . a:colorname
        \ . "')"
        \ )
endfunction

function! editcolorscheme#update(colorname)
    if !s:term
        call editcolorscheme#init()
    endif
    call term_sendkeys(s:term, ":colorscheme " . a:colorname . "\<CR>")
endfunction
