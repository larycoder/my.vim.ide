# Hotfix because of vim issues

I have serious problem with vim bug when combining with some of my pluggin. I do
not have time investing on that bug now but when ever bug happen, I met segment
coredump and lost all my data. Therefore, I search and use a autosave plugin for
vim so whenever bug happen, I do not lost all my data again. Here it go:

```vimL
Plug '907th/vim-auto-save'

let g:auto_save = 1  " enable AutoSave on Vim startup => good config
```

It work find for me after fast test so I will stick with this plug for now.

# Warning

It seen like author does not support it anymore, so careful when try it yourself.
