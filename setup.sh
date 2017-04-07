# basic tools
brew install zsh zsh-completions
brew install tmux --enable-utf8proc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # tmux plugin manager

brew install reattach-to-user-namespace
brew install direnv
brew install watchexec
brew install tree
brew install jq
brew install nkf
brew install the_silver_searcher

brew cask install xquartz # X11 server

# Node.js
brew install node

# Python3
brew install python3
pip3 install numpy scipy pandas matplotlib jupyter
pip3 install regex
pip3 install chainer

# Ruby
brew install ruby

brew install vim --with-python --with-python3


# LaTeX
brew install ghostscript
brew cask install mactex
sudo tlmgr update --self --all
brew cask install skim && defaults write -app Skim SKAutoReloadFileUpdate -boolean true # PDF viewer with synctex support with auto-reload enabled

# PDF processing
brew install homebrew/x11/xpdf # including 'pdffonts' command

# unarchiver
brew install unar

# global key mapper realizing "CMD-R -> KANA, CMD_L -> EISUU"
brew cask install cmd-eikana # 'karabiner' is more advanced, but currenty it does not work on macOS Sierra

# Google Chrome
brew cask install google-chrome && defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE # disable annoying swipe back gesture

# Sketch.app
brew cask install sketch

# Docker
brew cask install docker

# Night Shift
brew cask install flux

# Virtual Machine for Microsoft Windows and Office
brew cask install veertu-desktop
