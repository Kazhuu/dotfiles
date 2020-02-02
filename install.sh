# Vim
mkdir -p ~/.vim
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
# Check to prevent making symbolic links to this repository.
if [ -f /.vim/ftplugin ]; then
    ln -s ~/dotfiles/vim/ftplugin ~/.vim/ftplugin
else
    printf "~/.vim/ftplugin file exists\n"
fi

# Kitty
mkdir -p ~/.config/kitty
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
