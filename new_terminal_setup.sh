#!/bin/sh

echo "**************************************************************************"
echo "* Make sure you install the Xcode tools and agree to the license before  *"
echo "* running this script. Otherwise all sorts of errors are going to happen *"
echo "* and you'll have to make fun of yourself.                               *"
echo "**************************************************************************"

# accept Xcode license here in case we ignore the above
sudo xcodebuild -license

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ruby
brew install zsh
brew install git
brew install tmux
brew install gpg

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp zshrc ~/.zshrc
chsh -s /bin/zsh

sudo easy_install pip
sudo pip install powerline-status
sudo pip install psutil

brew install macvim --env-std --override-system-vim
brew linkapps macvim

git clone https://github.com/powerline/fonts.git ~/Downloads/powerline-fonts
sh ~/Downloads/powerline-fonts/install.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall

cp tmux.conf ~/.tmux.conf
