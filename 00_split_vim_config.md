# Too much configure ins single vimrc --> split them out

First, create new folder **vimrc.d** to store your custom setting files. (extension much be \*.vim)

Then add below code to vimrc to load them:
```vimL
for f in split(glob("~/.vim/vimrc.d/*.vim"), '\n')
        exe "source" f
endfor
```

Simple !!
