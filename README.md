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
* Ctags / Exuberant Ctags

Tmux
----

* Download TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Follow instructions @ https://github.com/tmux-plugins/tpm
