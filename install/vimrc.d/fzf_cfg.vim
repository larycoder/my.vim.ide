" Fuzzy Search configuration

" Predefine Rg search for fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --no-ignore-vcs --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
