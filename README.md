install the following:

1. Install ZSH (`sudo apt install zsh`)
1. Install oh-my-zsh (`https://github.com/robbyrussell/oh-my-zsh`). This creates
a new folder (`~/.oh-my-zsh`).
1. Install zsh-autosuggestions plugin by downloading something into
`~/.oh-my-zsh` folder
    https://github.com/zsh-users/zsh-autosuggestions
1. Install fast-syntax-highlighting by downloading another thing into the
~/.oh-my-zsh folder.
    https://github.com/zdharma/fast-syntax-highlighting 


1. Install tmux

Add .vim, .vimrc, .tmux* files.

`git submodule update --init`

https://help.github.com/articles/ignoring-files/
Needs to be an absolute path
git config --global core.excludesfile ~/.gitignore_global

`sudo chsh` -> /usr/bin/zsh

install powerline fonts, and change shell font

Make sure to install YCM by following the instructions on the website: https://github.com/ycm-core/YouCompleteMe#installation

which is tl;dr python3 install.py --clangd-completer

clang install (with tooling:)


sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 60 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 --slave /usr/share/man/man1/clang.1.gz clang.1.gz /usr/share/man/man1/clang-6.0.1.gz --slave /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-6.0 --slave /usr/bin/clang-format clang-format /usr/bin/clang-format-6.0 --slave /usr/bin/clangd clangd /usr/bin/clangd-6.0

sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-8 81 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-8 --slave /usr/share/man/man1/clang.1.gz clang.1.gz /usr/share/man/man1/clang-8.1.gz --slave /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-8 --slave /usr/bin/clang-format clang-format /usr/bin/clang-format-8 --slave /usr/bin/clangd clangd /usr/bin/clangd-8 

make sure to install all of the things it asks for as well.

