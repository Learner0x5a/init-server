
# software sources
cp /etc/apt/sources.list /etc/apt/sources.list.backup
cp sources/ubuntu-18.04  /etc/apt/sources.list
apt update
apt install vim git zsh -y

# zsh
sh zsh/zsh_install.sh
