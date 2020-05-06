#!/bin/bash

version=1.0

yarn_major_version=1
node_major_version=12

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
echo "\nTask 1/6: Installing ZSH...\n"
sudo apt install zsh
chsh -s $(which zsh)

# Install Oh My ZSH
# https://github.com/robbyrussell/oh-my-zsh
echo "\nTask 2/6: Installing Oh My ZSH...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Spaceship ZSH
# https://github.com/denysdovhan/spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Finalize Oh My ZSH Setup
echo "\nTask 3/6: Configuring Oh My ZSH...\n"
cp ./.zshrc ~/ | bash

# Install asdf
# https://github.com/asdf-vm/asdf
echo "\nTask 4/6: Installing asdf...\n"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

# Install default asdf plugins
echo "\nTask 5/6: Installing asdf plugins...\n"
asdf plugin-add yarn
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# Install default asdf versions
echo "\nTask 6/6: Installing asdf versions...\n"
asdf install yarn latest:$yarn_major_version
asdf install nodejs latest:$node_major_version

echo "\nYou're ready to roll!\n"
echo "                         __                                  _ ";
echo "   _____   _____ _ __   / _| ___  _ ____      ____ _ _ __ __| |";
echo "  / _ \ \ / / _ \ '__| | |_ / _ \| '__\ \ /\ / / _\` | '__/ _\` |";
echo " |  __/\ V /  __/ |    |  _| (_) | |   \ V  V / (_| | | | (_| |";
echo "  \___| \_/ \___|_|    |_|  \___/|_|    \_/\_/ \__,_|_|  \__,_|";
echo "                                                               ";
