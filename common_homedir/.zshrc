#
# User configuration sourced by interactive shells
#

DEFAULT_USER="cole"

# Make sure zim is available
if [ ! -d ${ZDOTDIR:-${HOME}}/.zim ]; then
	git clone https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim
	cd ${ZDOTDIR:-${HOME}}/.zim
	git submodule init
	git submodule update --recursive
fi
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
	source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# Make sure vim-plug is available
if [[ ! -f "$HOME/.config/nvim/autoload/plug.vim" ]]; then
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Make sure we start a tmux session
if [[ -z "$TMUX" ]]; then
	tmux attach || tmux new
fi;

source $HOME/.zprofile

source $HOME/.scripts/zsh/tmux-pane-completion.zsh

