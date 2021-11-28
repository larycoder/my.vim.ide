" window config
set tabstop=4
set expandtab
set list
set spell
set number

" markdown code blocks language
let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'python', 'sql', 'yaml']

" set status bar
set laststatus=2

" keybinding
vmap <C-C> "+y
nmap <C-J> %

" folding setting
set foldmethod=manual
set foldcolumn=1
