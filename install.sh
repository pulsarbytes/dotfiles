#!/usr/bin/env bash

mv ~/.bashrc ~/.bashrc.OLD
ln -s ~/dotfiles/.bashrc ~/.bashrc

mv ~/.zshrc ~/.zshrc.OLD
ln -s ~/dotfiles/.zshrc ~/.zshrc

mv ~/.tmux.conf ~/.tmux.conf.OLD
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

mv ~/.gitignore_global ~/.gitignore_global.OLD
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
