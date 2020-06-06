# install zsh
apt install zsh

# make zsh default shell if it not the case
if echo $SHELL | grep -qv '/usr/bin/zsh'; then
	chsh -s $(which zsh);
fi

# install zsh
ZSH=~/.oh-my-zsh

if [ -d "$ZSH" ]; then
	echo "Oh My Zsh is already installed. Skipping.."
else
	echo "Installing Oh My Zsh..."
	curl -L http://install.ohmyz.sh | sh
fi

# link zsh config
ln -fs $(pwd)/.zshrc ~/.zshrc 