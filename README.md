linux-config
============

Configure your development environment based on vim, tmux and zsh.

Have it
-------

```bash
git clone https:/github.com/devfilipe/linux-config.git
```

Backup your current files. Replace those you want.

Vundle & Vim
------------

* Download Vundle

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Install Plugins on vim

```bash
:so %
:PluginInstall
```

* Fix YouCompleteMe (you may be asked to)

```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer # check for options
```

Prerequisites
-------------

* Vim
* Cmake
* Ctags / Exuberant Ctags

Tmux
----

* Download TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Follow instructions @ https://github.com/tmux-plugins/tpm

oh-my-zsh
---------

Install oh-my-zsh:
```sh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Download PowerLevel10k theme:
```sh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Edit `.zshrc`:
```sh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Exec `zsh` to configure powerlevel10k theme:
```sh
exec zsh
```

