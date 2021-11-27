# Just extra convenient when coding

1. For folding:

```
set foldmethod=syntax
set foldcolumn=1
```

It will work well with vim-polyglot plugin so do not worry.
Then here are some convenient folding command:

- zR : open all fold of file
- zc : close fold
- zC : close all sub-fold of current fold
- zo : open fold
- zO : open all sub-fold of current fold
- %  : allow to moving from start and end brace in block

Better way to use fold:

```
set foldmethod=manual
set foldcolumn=1
nmap <C-J> %            => % keyword is too far, map it to Ctrl + J
```

That is set fold to manual and define it by yourself, just try to code clearly then create fold when done. Folding is not common
action so do not afraid to do it manually.

2. For autocomplete brace, using plugin search fast on internet:

```
Plug 'jiangmiao/auto-pairs'
```

Fast test look good for me !

--> this auto-pairs work not too well, I'm checking on coc vim plugin, it seen that coc vim support well for brace enter => so this
plugin is not actually necessary.
