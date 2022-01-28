" map format call to Crtl-L
map <C-L> :Autoformat<CR>

" verbose autoformat log
let g:autoformat_verbosemode=2

" custom java formatter
let g:formatdef_astyle_java = '"astyle --mode=java --style=java -pcHs4 -xC82"'
