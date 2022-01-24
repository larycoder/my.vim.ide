# Broken server 4 times in 3 minutes

Coc-java is laying on jdt as its lsp server. It works well with many high jdk
but break in jdk - 1.8.0_221. This version is quite old but I need it to run
hadoop 2.7 so the solution must to be found out.

# Relating issues

The same problem happen and fixed in coc-nvim issues:
[link](https://github.com/neoclide/coc-java/issues/99).

# My solution

Following recommendation on github issue forum, the jdt-0.57 is download and
setup as main server. The implementation is simple. There are 2 jdt server
with name "server-{version}". And the main server is a link to working fine one.

The implementation location will be: "$HOME/.config/coc/extensions/coc-java-data"

At the moment, preferring version is "0.57" and latest is "0.65"
