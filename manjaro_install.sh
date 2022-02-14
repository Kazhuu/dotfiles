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

# ruby
ln -s ~/dotfiles/ruby/.pryrc ~/

# gdb
ln -s ~/dotfiles/gdb/.gdbinit ~/

# cgdb
mkdir -p ~/.cgdb/
ln -s ~/dotfiles/cgdb/cgdbrc ~/.cgdb/
