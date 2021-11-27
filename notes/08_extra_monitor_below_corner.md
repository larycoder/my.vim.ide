# List of useful information can be show in corner of vim

Following some fancy website about vim, I have this:

```
Plug 'vim-airline/vim-airline'
```

Very worth to install it for looking useful status, It status is a bit colorful for me, I will deal with it later ;-)

Good news, I check back vendor README and it turns out that PaperColor has support for vim airline, step to update is:

```
Plug 'vim-airline/vim-airline-themes' --> push to vimrc plug

let g:airline_theme='papercolor' --> set to color config
```

Tres Bien !

# List buffer

Tired of ":ls" commend every times, solution:

```
Plug 'bling/vim-bufferline'
```

Just installed it, present a bit messy and somehow have bad compatible with vim-airline, but it is fantasy for small amount of buffer
For large one, maybe you should use ":ls" --> note: buffer number is always increasing event if you totally delete buffer, accept it.

--> this list buffer work not too well, I'm checking on coc vim plugin, it seen that coc vim support well for brace enter => so this
plugin is not actually necessary.
