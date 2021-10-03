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

# Install iSstp
curl -L https://github.com/axot/isstp/releases/download/v1.4.1-rc1/iSstp.v1.4.1-rc1.zip > ~/Downloads/iSSTP.zip && \
    unzip ~/Downloads/iSSTP.zip -d /Applications && \
    rm -rf ~/Downloads/iSSTP.zip

# Install parallels
brew install --cask parallels

# Install Microsoft office
brew install --cask microsoft-office

# Install Microsoft Teams
brew install --cask microsoft-teams

# Install zoom
brew install --cask zoom

# Install PIA
brew install --cask private-internet-access

# Download Logi Options
curl -L https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip > ~/Downloads/options.zip && \
    unzip ~/Downloads/options.zip -d ~/Downloads && \
    rm -rf ~/Downloads/options.zip

# Install font
cp Meslo\ LG\ M\ Regular\ for\ Powerline.ttf /Library/Fonts

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

################
### GAME DEV ###
################
# Install Unity Hub
brew install --cask unity-hub

# Install .NET SDK
brew install --cask dotnet-sdk

########################################
### MUSIC                            ###
### Need to download these manually: ###
### - Logic Pro X                    ###
### - Toontrack Product Manager      ###
### - VSL                            ###
### - Line 6                         ###
########################################
# Install FL Studio
brew install --cask fl-studio

# Install Native Access
brew install --cask native-access

# Install Arturia Software Center
curl -L https://downloads.arturia.net/products/asc/soft/Arturia_Software_Center__2_2_1_94.pkg > ~/Downloads/arturia.pkg && \
    sudo installer -pkg ~/Downloads/arturia.pkg -target / && \
    rm -rf ~/Downloads/arturia.pkg

# Download Steinberg Download Assistant
curl -L https://www.steinberg.net/sda-mac > ~/Downloads/steinberg.dmg

#############
### GAMES ###
#############
# Install FF
brew install --cask final-fantasy-xiv-online

###################
### DIRECTORIES ###
###################
# Make project directories
mkdir ~/Projects
mkdir {~/Projects/Music,~/Projects/Programming}
mkdir {~/Projects/Music/Cubase,~/Projects/Music/FLStudio,~/Projects/Music/Logic,~/Projects/Music/Maschine} 
mkdir {~/Projects/Programming/Personal,~/Projects/Programming/Bumticket,~/Projects/Programming/Croner} 


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