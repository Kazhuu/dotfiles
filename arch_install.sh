# Xorg
ln -s ~/dotfiles/xorg/.xinitrc ~/
ln -s ~/dotfiles/xorg/.xprofile ~/
ln -s ~/dotfiles/xorg/picom.conf ~/.config/

# Locale
ln -s ~/dotfiles/locale/locale.conf ~/.config/

# Git
ln -s ~/dotfiles/git/.gitconfig ~/

# Vim
mkdir -p ~/.vim
ln -s ~/dotfiles/vim/.vimrc ~/
ln -s ~/dotfiles/vim/ftplugin ~/.vim
ln -s ~/dotfiles/vim/coc-settings.json ~/.vim/

# Neovim
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/neovim/init.vim ~/.config/nvim/

# Kitty
mkdir -p ~/.config/kitty
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/

# i3
mkdir -p ~/.i3
ln -s ~/dotfiles/i3/config ~/.i3/
ln -s ~/dotfiles/i3/.i3status.conf ~/

# ruby
ln -s ~/dotfiles/ruby/.pryrc ~/

# gdb
ln -s ~/dotfiles/gdb/.gdbinit ~/

# cgdb
mkdir -p ~/.cgdb/
ln -s ~/dotfiles/cgdb/cgdbrc ~/.cgdb/
