#!/usr/bin/zsh

set +e

# Clone zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

# Clone powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Clone zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Clone zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
		
# Modify the ~/.zshrc
sed -i '' 's/robbyrussell/powerlevel9k\/powerlevel9k/g' ~/.zshrc &&
sed -i '' 's/plugins=(git)/plugins=(git virtualenv zsh-autosuggestions zsh-completions zsh-syntax-highlighting)/g' ~/.zshrc &&
echo 'POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)' >> ~/.zshrc &&
echo 'POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv root_indicator background_jobs history time)' >> ~/.zshrc &&
echo 'POWERLEVEL9K_PROMPT_ON_NEWLINE=true' >> ~/.zshrc &&
echo 'POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"' >> ~/.zshrc &&
echo 'local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
	user_symbol = "#"
fi
' >> ~/.zshrc &&
echo 'POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"' >> ~/.zshrc &&
echo 'POWERLEVEL9K_PROMPT_ADD_NEWLINE=true' >> ~/.zshrc &&
echo 'POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="red"' >> ~/.zshrc &&
echo 'export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc && 
echo 'export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"' >> ~/.zshrc && 
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"' >> ~/.zshrc &&
echo 'export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"' >> ~/.zshrc