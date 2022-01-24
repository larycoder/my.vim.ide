# Similar error check on internet

https://github.com/prabirshrestha/vim-lsp/issues/888

And explanation

https://github.com/prabirshrestha/vim-lsp/pull/721#issuecomment-753279052

# Bug with coc.nvim for Vim

- Extension: coc-flutter
- filetype: dart
- Reproduct:

Create file dart with content as below

```dart
class Test{
  int Function() testFunc() => Future.then((){});
}
```

Move cursor into brace **{}** then enter 2 times to move brace down 2 lines.
Then try to add backspace until vim get ABORT signal.

# Problem

Since vim swap file is disabled in plugin, it cause data lost if buffer is not
saved.

# Fixed ?

[2021-12-07] no
[2021-01-25] no - but problem caused by vim bug mentioned in [link](https://github.com/neoclide/coc.nvim/issues/3501)
