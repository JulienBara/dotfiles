# install zsh
apt install zsh

# make zsh default shell if it not the case
if echo $SHELL | grep -qv '/usr/bin/zsh'; then
	echo "test"
	chsh -s $(which zsh);
fi

