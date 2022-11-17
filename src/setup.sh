#!/usr/bin/zsh

set +e

###############
### GENERAL ###
###############
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install rosetta
sudo softwareupdate --install-rosetta

# Install rectangle
brew install --cask rectangle


########################
### WEB DEV & DEVOPS ###
########################
# Install command line tools
xcode-select --install

# Install VSCode
brew install --cask visual-studio-code

# Install postman
brew install --cask postman

# Install pgadmin4
brew install --cask pgadmin4

# Install Azure CLI
brew install azure-cli

# Install docker
brew install --cask docker

# Install devspace
brew install devspace

# Install Chrome
brew install --cask google-chrome

# Install Edge
brew install --cask microsoft-edge

# Install Firefox
brew install --cask firefox

# Install node
brew install node

# Install node
brew install poetry


################
### GAME DEV ###
################
# Install Unity Hub
brew install --cask unity-hub

# Install .NET SDK
brew install --cask dotnet-sdk

# Install mono
brew install mono


####################
### VIM SETTINGS ###
####################
# Create and edit VIM settings
touch ~/.vimrc
echo ":set number" >> ~/.vimrc
echo ":syntax on" >> ~/.vimrc


###########
### ZSH ###
###########
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
