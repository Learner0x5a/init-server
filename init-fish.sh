apt update 
apt install vim git tmux software-properties-common

# tmux
cp tmux/.tmux.conf ~/.tmux.conf

# vim
cp vim/vimrc ~/.vimrc


# fish

apt-add-repository ppa:fish-shell/release-3
apt update
apt install fish

# As root user, if chsh fails (PAM failure), check /etc/passwd:root, correct the shell path
#   e.g. from /usr/local/bin/fish to /usr/bin/fsh
chsh -s $(which fish)

