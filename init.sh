# software sources
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo cat sources/ubuntu-20.04.1 > /etc/apt/sources.list
sudo apt update
sudo apt install vim git zsh -y

# zsh
sh zsh/zsh_install.sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp zsh/zshrc ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)/g" ~/.zshrc
source ~/.zshrc

# vim
cp vim/vimrc ~/.vimrc
