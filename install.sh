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

# install powerlevel10k
if [ -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
	echo "powerlevel10k is already installed. Skipping.."
else
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
fi


# link configs
ln -fs $(pwd)/.zshrc ~/.zshrc 
ln -fs $(pwd)/.p10k.zsh ~/.p10k.zsh 
