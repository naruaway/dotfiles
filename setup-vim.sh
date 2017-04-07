mkdir -p ~/.vim/dein
DEIN_INSTALL_DIR=~/.vim/dein/repos/github.com/Shougo/dein.vim
if ! [ -e "$DEIN_INSTALL_DIR" ]; then
  git clone https://github.com/Shougo/dein.vim "$DEIN_INSTALL_DIR"
fi

mkdir -p ~/.vim/colors
cp molokai.vim ~/.vim/colors/molokai.vim
