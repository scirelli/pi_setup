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
git config --global user.email "scirelli@gmail.com"
git config --global user.name "Steve Cirelli"
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
# Retro PI                   #
##############################
# For retroPI get file system table
#git clone --depth=1 https://github.com/scirelli/pi_retro_fstab.git ~/Downloads/pi_retro_fstab

#sudo apt-get install synergyc
