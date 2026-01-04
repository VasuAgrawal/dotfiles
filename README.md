# Dotfiles

Personal configuration files for zsh, vim, and tmux.

## Updated Fedora 43 Setup

### Zsh

1. Install zsh:
   ```bash
   sudo dnf install zsh
   ```

2. Install oh-my-zsh:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Install zsh plugins:
   ```bash
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

4. Symlink .zshrc:
   ```bash
   ln -sf ~/dotfiles/.zshrc ~/.zshrc
   ```

5. Set zsh as default shell:
   ```bash
   chsh -s /usr/bin/zsh
   ```
   Log out and back in for the change to take effect.

### Tmux

1. Clone oh-my-tmux:
   ```bash
   cd ~
   git clone --single-branch https://github.com/gpakosz/.tmux.git
   ```

2. Symlink configs:
   ```bash
   ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
   ln -sf ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
   ```

To update oh-my-tmux later: `cd ~/.tmux && git pull`

### Vim

1. Symlink vim configs:
   ```bash
   ln -sf ~/dotfiles/.vimrc ~/.vimrc
   ln -sf ~/dotfiles/.vim ~/.vim
   ```

2. Initialize submodules (vim plugins):
   ```bash
   cd ~/dotfiles
   git submodule update --init --recursive
   ```

---

## Legacy

### Shell Setup (Fedora)

#### Install powerline fonts (for theme)

```bash
sudo dnf install powerline-fonts
```

#### Symlink bashrc

```bash
ln -sf ~/dotfiles/.bashrc ~/.bashrc
```

---

## Git Setup

Configure global gitignore:

```bash
git config --global core.excludesfile ~/dotfiles/.gitignore_global
```

---

## C++ Development (Fedora)

Install clang toolchain:

```bash
sudo dnf install clang clang-tools-extra
```

This provides clang, clang++, clangd, clang-format, and clang-tidy.

