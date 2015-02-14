#! /bin/sh

# WARNING!
# This script will delete the following files and
# directories (if they're exit) in your home directory:
# .profile, .bashrc, .shell_alises, .shell_variables
# .zshrc, .vimrc, .vim/


if [ -f ~/.profile ]; then
    rm -f ~/.profile
fi
ln -s "$PWD/profile" "$HOME/.profile"

if [ -f ~/.bashrc ]; then
    rm -f ~/.bashrc
fi
ln -s "$PWD/bashrc" "$HOME/.bashrc"

if [ -f ~/.shell_aliases ]; then
    rm -f ~/.shell_aliases
fi
ln -s "$PWD/shell_aliases" "$HOME/.shell_aliases"

if [ -f ~/.shell_variables ]; then
    rm -f ~/.shell_variables
fi
ln -s "$PWD/shell_variables" "$HOME/.shell_variables"

if [ -f ~/.vimrc ]; then
    rm -f ~/.vimrc
fi
ln -s "$PWD/vimrc" "$HOME/.vimrc"

if [ -d ~/.vim ]; then
    rm -rf ~/.vim
fi
ln -s "$PWD/vim" "$HOME/.vim"

if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc
fi
ln -s "$PWD/zshrc" "$HOME/.zshrc"

