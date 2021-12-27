# Intellisense Engine

This is a kind of a code-completion aid. So basically, it allow autocomplete code, hint and some error checking think.
After searching on internet, coc.vim is a good option to start. I do not prefer it since I had not yet understood it.
But anyway, check it latter, it help me to reduce bunch of graphic memory for another IDE then why not.

# COC.vim

For installing and using, follow their github:

- link: https://github.com/neoclide/coc.nvim

# Setup

Install:
```
pacman -S Nodejs (>= 12.12)
pacman -S npm
vim echo "Plug 'neoclide/coc.nvim', {'branch': 'release'}" >> ~/.vim/vimrc (just joke, do it by vim)
```

# For understanding more on LSP and COC:

- read this link: https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/


# Quick Note

Reading their github (just kidding). It seen like coc will auto activate when installed. (whistle, it work right now). -- 2021-11-25
Basically, coc is just frontend of LSP (Language Server Protocol). So we need language server for specific language to perform its
design feature. It could be called "language server". Btw, coc.vim can support formatter so maybe in next times, I will remove another
formatter option (hint).

It is nodejs based plugin, but well, it good for me.

# Language Server List:

Note: if you install through CocInstall --> stored in "~/.config/coc/extensions/node_modules"

1. coc-flutter
2. coc-clangd (for connect clangd to coc) + clang (for clangd)
3. coc-pyright (support python)
4. coc-rls ( for supporting rust -- setup: https://github.com/neoclide/coc-rls )
