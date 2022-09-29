## VIM configuration file

### Requirements
1. ccls ('C-type' language-server)
2. jedi == 0.17.2
3. yarn == 1.22.19
4. nodejs >= 14.14

### Install
Open vim and type command `:PlugInstall` to install plugin extensions. If all processes are done correctly, one can see the following messages:
```
:PlugInstall

Updated. Elapsed time: 22.079525 sec.
[====]

- Finishing ... Done!
- Post-update hook for markdown-preview.nvim ... OK
- vimtex: Resolving deltas: 100% (1447/1447), done.
- markdown-preview.nvim: Resolving deltas: 100% (320/320), done.
- nerdtree: Resolving deltas: 100% (463/463), done.
- coc.nvim: Resolving deltas: 100% (3546/3546), done.
```
Finished Install of `coc.nvim`, type command in `vim` as follows:
```
:CocInstall coc-markdownlint coc-sh coc-rust-analyzer coc-jedi
```
One can check the plugin list:
```
:CocList extensions

  * coc-markdownlint 1.26.0 ~/.config/coc/extensions/node_modules/coc-markdownlint
  + coc-rust-analyzer 0.68.2 ~/.config/coc/extensions/node_modules/coc-rust-analyzer
  + coc-sh 0.7.0 ~/.config/coc/extensions/node_modules/coc-sh
  + coc-jedi 0.32.0 ~/.config/coc/extensions/node_modules/coc-jedi
```

### Helpful library
#### Skim (only for OS X user)
[Skim](https://skim-app.sourceforge.io/) can continuously provide user with a refreshed pdf file when it changed by auto compilation.
I strongly recommend using it when one are in macOS environment.
