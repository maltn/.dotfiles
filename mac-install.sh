SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [ -d "nvim" ]; then
	if [ ! -d "~/.config/nvim" ]; then
		sudo ln -s "$SCRIPTPATH/nvim" "$HOME/.config/nvim"
		echo "created nvim symlink"
	fi
fi

echo "finished"
