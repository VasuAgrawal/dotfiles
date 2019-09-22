install the following:

1. Install ZSH (`sudo apt install zsh`)
1. Install oh-my-zsh (`https://github.com/robbyrussell/oh-my-zsh`). This creates
a new folder (`~/.oh-my-zsh`).
1. Install zsh-autosuggestions plugin by downloading something into
`~/.oh-my-zsh` folder
    https://github.com/zsh-users/zsh-autosuggestions
1. Install zsh-syntax-highlighting by downloading another thing into the
~/.oh-my-zsh folder.
    https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md


1. Install tmux

Add .vim, .vimrc, .tmux* files.

`git submodule update --init`

built custom vim with the following, to get python support (for vim-ros)
https://gist.github.com/sevko/870123c1c54cbd6661fc

https://help.github.com/articles/ignoring-files/
Needs to be an absolute path
git config --global core.excludesfile ~/.gitignore_global

`sudo chsh` -> /usr/bin/zsh

install powerline fonts, and change shell font

Make sure to install YCM by following the instructions on the website: https://github.com/ycm-core/YouCompleteMe#installation

which is tl;dr python3 install.py --clangd-completer