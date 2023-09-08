if exists("g:loaded_baleia_vim_test") | finish | endif
let g:loaded_baleia_vim_test= 1

let s:baleia = luaeval("require('baleia').setup { }")
command! Colorize call s:baleia.once(bufnr('%'))
