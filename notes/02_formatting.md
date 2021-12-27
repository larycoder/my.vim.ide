# Formatting

- Using plugin:

Plugin 'Chiel92/vim-autoformat'

# File type support:

Plugin uses outside formate program to finish its job
Below is list of format program installed:

- clang             : (clang-format) C, C++, Objective-C, Protobuf, etc. (C family)
- astyle            : C, C++, C# and java (main is java)
- dartfmt           : Dart (Part of Dart SDK)
- yapf              : Python formatter
- rustfmt           : Rust formatter

# Map shortcut

Good time to map auto command with a shortcut:

```vimL
map <C-L> :Autoformat
```

Note: Autoformat is script of vim-autoformat

Some interesting configuration:
```
" Dart formatter folder
let g:formatterpath = ["/opt/flutter/bin/cache/dart-sdk/bin"]

" bindkey
nmap <C-L> :Autoformat<CR>

" verbose autoformat log (0 - none, 1- only error, 2 - all)
let g:autoformat_verbosemode=2
```

Should read more carefully on plugin README, there are bunch of configuration guideline in there.
