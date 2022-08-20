" window view
set tabstop=4
set expandtab
set list
set spell
set number
set colorcolumn=82
highlight ColorColumn ctermbg=7

" set code folding
set foldmethod=manual
set foldcolumn=1

" copy to clipboard by Crtl + C
vmap <C-C> "+y

" markdown code blocks language
let g:markdown_fenced_languages = ['css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'python', 'sql', 'yaml']

" disable ideavim
set visualbell
set noerrorbells
