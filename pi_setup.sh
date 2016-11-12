#!/bin/bash

###########################################################################
############## This script was not written to handle failures #############
############## Update update while installing R PI Jessy      #############
###########################################################################

# This is what upgrade printed out.
#Installed systemd unit for VNC Server in Virtual Mode daemon
#Start or stop the service with:
#  systemctl (start|stop) vncserver-virtuald.service
#Mark or unmark the service to be started at boot time with:
#  systemctl (enable|disable) vncserver-virtuald.service

###############################
# Update and Install Programs #
###############################
#sudo apt-get update && sudo apt-get upgrade

#sudo apt-get install screen
#sudo apt-get install vim
#sudo apt-get install vim-gnome
#sudo apt-get install npm
#sudo apt-get install git
###############################
###############################

##############################
# Setup Git                  #
##############################
#git config --global user.email "scirelli@gmail.com"
#git config --global user.name "Steve Cirelli"
#git config --global credential.helper cache
###############################
###############################

##############################
# Make Directories           #
##############################
#mkdir -p ~/Projects
#mkdir -p ~/tmp/vim
#mkdir ~/Downloads
#mkdir ~/.fonts
###############################
###############################

##############################
# Install fonts              #
##############################
#cd ~/Downloads
#wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
#unzip 1.050R-it.zip
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/OTF/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/EOT/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/TTF/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/WOFF/OTF/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/WOFF/TTF/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/WOFF2/OTF/* ~/.fonts
#cp ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/WOFF2/TTF/* ~/.fonts
#sudo fc-cache
#cd ~
##############################
##############################

##############################
# VIM Setup	                 #
##############################
# Install Pathogen
#mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install NERDTree
#git clone --depth=1 https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Install vim-surround
#git clone --depth=1 https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround

# Install emmet-vim
#git clone --depth=1 https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim

# Grab my vimrc
#git clone --depth=1 https://github.com/scirelli/vimrc.git ~/Downloads/vimrc
#cp ~/Downloads/vimrc/.vimrc ~/
##############################
##############################

##############################
# Synergy                    #
##############################
#sudo apt-get install synergy
#printf "[Desktop Entry]\nType=Application\nExec=synergyc --log /var/log/synergy.log Game-PC" > ~/.config/autostart/synergy.desktop
#echo "#!/bin/bash" > ~/synergy2.sh
#echo "sudo -u pi /usr/bin/synergyc --daemon --log /var/log/synergy.log Game-PC &" >> ~/synergy2.sh
#chmod 744 ~/synergy2.sh
##############################
##############################

##############################
# Retro PI                   #
##############################
sudo apt-get install lsb-release dialog
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git ~/Downloads/RetroPie-Setup
cd ~/Downloads/RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh

# For retroPI get file system table. Need to add this to you /etc/fstab
#git clone --depth=1 https://github.com/scirelli/pi_retro_fstab.git ~/Downloads/pi_retro_fstab
##############################
##############################
