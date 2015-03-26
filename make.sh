#! /bin/sh

echo "Update/upgrade..."
sudo apt-get update
sudo apt-get upgrade

echo "Installing build-essential, vim, zsh..."
sudo apt-get install build-essential vim vim-doc zsh zsh-doc

echo "Changing shell to zsh..."
chsh -s /bin/zsh

# WARNING!
# This script will delete the following files and
# directories (if they're exit) in your home directory:
# .profile, .bashrc, .shell_alises, .shell_variables
# .zshrc, .vimrc, .vim/

if [ ! -d ~/Apps ]; then
    echo "Creating directory for application \"Apps\""
    mkdir ~/Apps
fi

if [ -f ~/.profile ]; then
    rm -f ~/.profile
fi
echo "Creating link for \"~/.profile\"..."
ln -s "$PWD/profile" "$HOME/.profile"

if [ -f ~/.bashrc ]; then
    rm -f ~/.bashrc
fi
echo "Creating link for \"~/.bashrc\"..."
ln -s "$PWD/bashrc" "$HOME/.bashrc"

if [ -f ~/.shell_aliases ]; then
    rm -f ~/.shell_aliases
fi
echo "Creating link for \"~/.shell_aliases\"..."
ln -s "$PWD/shell_aliases" "$HOME/.shell_aliases"

if [ -f ~/.shell_variables ]; then
    rm -f ~/.shell_variables
fi
echo "Creating link for \"~/.shell_variables\"..."
ln -s "$PWD/shell_variables" "$HOME/.shell_variables"

if [ -f ~/.vimrc ]; then
    rm -f ~/.vimrc
fi
echo "Creating link for \"~/.vimrc\"..."
ln -s "$PWD/vimrc" "$HOME/.vimrc"

if [ -d ~/.vim ]; then
    rm -rf ~/.vim
fi
echo "Creating link for \"~/.vim\"..."
ln -s "$PWD/vim" "$HOME/.vim"

if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc
fi
echo "Creating link for \"~/.zshrc\"..."
ln -s "$PWD/zshrc" "$HOME/.zshrc"

