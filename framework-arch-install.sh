# Git
ln -s ~/dotfiles/git/.gitconfig ~/
ln -s ~/dotfiles/git/.gitignore ~/

# Vim
mkdir -p ~/.vim
ln -s ~/dotfiles/vim/.vimrc ~/
ln -s ~/dotfiles/vim/ftplugin ~/.vim
ln -s ~/dotfiles/vim/coc-settings.json ~/.vim/

# Sway
mkdir -p ~/.config/sway
ln -s ~/dotfiles/sway/config ~/.config/sway/

# Waybar
mkdir -p ~/.config/waybar
ln -s ~/dotfiles/waybar/config.jsonc ~/.config/waybar/
ln -s ~/dotfiles/waybar/style.css ~/.config/waybar/
ln -s ~/dotfiles/waybar/power_menu.xml ~/.config/waybar/

# Foot
mkdir -p ~/.config/foot
ln -s ~/dotfiles/foot/foot.ini ~/.config/foot/

# Neovim
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/neovim/init.vim ~/.config/nvim/

# zsh
ln -s ~/dotfiles/zsh/.zprofile ~/

# ruby
ln -s ~/dotfiles/ruby/.pryrc ~/

# gdb
ln -s ~/dotfiles/gdb/.gdbinit ~/

# cgdb
mkdir -p ~/.cgdb/
ln -s ~/dotfiles/cgdb/cgdbrc ~/.cgdb/

# PostgreSQL
ln -s ~/dotfiles/postgresql/.psqlrc ~/
