# Formatting

- Using plugin:

Plugin 'Chiel92/vim-autoformat'

# File type support:

Plugin uses outside formate program to finish its job
Below is list of format program installed:

- clang             : (clang-format) C, C++, Objective-C, Protobuf, etc. (C family)
- astyle            : C, C++, C# and java (main is java)
- dartfmt           : Dart (Part of Dart SDK)

# Map shortcut

Good time to map auto command with a shortcut:

```vimL
map <C-L> :Autoformat
```

Note: Autoformat is script of vim-autoformat
