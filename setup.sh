#!/bin/bash

version=1.0
defaultNodeVersion=10

echo "carbonsam's        __ _       ";
echo "   ___ ___  _ __  / _(_) __ _ ";
echo "  / __/ _ \| '_ \| |_| |/ _\` |";
echo " | (_| (_) | | | |  _| | (_| |";
echo "  \___\___/|_| |_|_| |_|\__, |";
echo "                        |___/  version $version";
echo ""
echo "Get the latest updates on Github: https://github.com/carbonsam/config"
echo ""

# Install ZSH and set as default shell
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
echo ""
echo "Task 1/6: Installing ZSH..."
echo ""
sudo apt install zsh
chsh -s $(which zsh)

# Install Oh My ZSH
# https://github.com/robbyrussell/oh-my-zsh
echo ""
echo "Task 2/6: Installing Oh My ZSH..."
echo ""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Finalize Oh My ZSH Setup
echo ""
echo "Task 3/6: Configuring Oh My ZSH..."
echo ""
cp ./.zshrc ~/ | bash

# Install NVM
# https://github.com/nvm-sh/nvm
echo ""
echo "Task 4/6: Installing NVM..."
echo ""
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install $defaultNodeVersion

# Install Yarn
# https://yarnpkg.com/en/docs/install#debian-stable
echo ""
echo "Task 5/6: Installing Yarn..."
echo ""
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Install RVM
# https://github.com/rvm/ubuntu_rvm
echo ""
echo "Task 6/6: Installing RVM..."
echo ""
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/share/rvm/scripts/rvm

echo ""
echo "You're ready to roll!"
echo ""
echo "                         __                                  _ ";
echo "   _____   _____ _ __   / _| ___  _ ____      ____ _ _ __ __| |";
echo "  / _ \ \ / / _ \ '__| | |_ / _ \| '__\ \ /\ / / _\` | '__/ _\` |";
echo " |  __/\ V /  __/ |    |  _| (_) | |   \ V  V / (_| | | | (_| |";
echo "  \___| \_/ \___|_|    |_|  \___/|_|    \_/\_/ \__,_|_|  \__,_|";
echo "                                                               ";
