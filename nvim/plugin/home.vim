"=============================================================================
" File:		homeLikeVC++.vim
" Author:	Luc Hermitte <EMAIL:hermitte@free.fr>
"		<URL:http://hermitte.free.fr/vim>
" Version:	1.0
" Created:	23rd mar 2002
" Last Update:	29th mar 2002
"------------------------------------------------------------------------
" Description:	Makes <Home> behaves like it does with Ms-VC++. 
"               -> Hitting <Home> once moves the cursor to the first non blank
"               character of the line, twice: to the first column of the line.
" 
"------------------------------------------------------------------------
" Installation:	Drop it into one of your plugin directories
" History:	1.0: initial version
" TODO:		any missing features ?
"=============================================================================
"
" Avoid reinclusion
if exists("g:loaded_homeLikeVC_vim_test") | finish | endif
let g:loaded_homeLikeVC_vim_test = 1
"
"
function! s:HomeLikeVCpp()
  let ll = strpart(getline('.'), -1, col('.'))
  if ll =~ '^\s\+$' | normal! 0
  else              | normal! ^
  endif
endfunction
"
"------------------------------------------------------------------------
inoremap <silent><home> <c-o>:call <SID>HomeLikeVCpp()<cr>
nnoremap <silent><home> :call <SID>HomeLikeVCpp()<cr>
