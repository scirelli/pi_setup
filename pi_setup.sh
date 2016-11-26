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
#sudo apt-get -y update && sudo apt-get -y upgrade

#sudo apt-get -y install git
#sudo apt-get -y install screen
#sudo apt-get -y install vim
#sudo apt-get -y install vim-gnome
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
# Setup .bashrc              #
##############################
#echo "if [ -f ~/.bash_env_vars ]; then" \
#"    . ~/.bash_env_vars" \
#"fi" >> ~/.bashrc
#touch ~/.bash_env_vars
##############################
##############################

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
# VIM Setup	             #
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
#sudo apt-get -y install synergy
#sudo apt-get -y install libcrypto++9
#printf "[Desktop Entry]\nType=Application\nExec=synergyc --log /var/log/synergy.log Game-PC" > ~/.config/autostart/synergy.desktop
#echo "#!/bin/bash" > ~/synergy2.sh
#echo "sudo -u pi /usr/bin/synergyc --daemon --log /var/log/synergy.log Game-PC &" >> ~/synergy2.sh
#chmod 744 ~/synergy2.sh
##############################
##############################

##############################
# Retro PI                   #
##############################
#sudo apt-get install lsb-release dialog
#git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git ~/Downloads/RetroPie-Setup
#cd ~/Downloads/RetroPie-Setup
#chmod +x retropie_setup.sh
#sudo ./retropie_setup.sh
#printf "#!/bin/bash\nsudo /etc/init.d/x11-common stop && sudo /etc/init.d/lightdm stop" > ~/Documents/killDesktopGUI.sh
#chmod 744 ~/Documents/killDesktopGUI.sh
# For retroPI get file system table. Need to add this to you /etc/fstab
#git clone --depth=1 https://github.com/scirelli/pi_retro_fstab.git ~/Downloads/pi_retro_fstab
##############################
##############################

##############################
# Amazon Alexa               #
##############################
#git clone https://github.com/alexa/alexa-avs-sample-app.git ~/Projects/alexa-avs-sample-app
#cp /tmp/oldHome/automated_install.sh ~/Projects/alexa-avs-sample-app
#cd ~/Projects/alexa-avs-sample-app
#. automated_install.sh
##############################
##############################

##############################
# NGINX HTTP Server          #
##############################
#codename=jessie
#sudo apt-key add nginx_signing.key
#deb http://nginx.org/packages/debian/ ${codename} nginx
#deb-src http://nginx.org/packages/debian/ ${codename} nginx
#sudo apt-get update
#sudo apt-get -y install nginx
##############################
##############################

##############################
# Nodejs                     #
##############################
#sudo apt-get -y isntall nodejs
#cd ~/Downloads
#wget https://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-armv7l.tar.xz
#tar -xvf node-v6.9.1-linux-armv7l.tar.xz
#mv node-v6.9.1-linux-armv7l node6
#sudo mv node6 /opt
#sudo rm /usr/bin/node
#sudo ln -s /opt/node6/bin/node /usr/bin/node
#sudo rm /usr/bin/npm
#sudo ln -s /opt/node6/bin/npm /usr/bin/npm
##############################
##############################

##############################
# NPM                        #
##############################
#sudo apt-get -y install npm
##############################
##############################

##############################
# Java Oracle for Pi         #
##############################
# Ensure we are running on Raspbian
#lsb_release -a 2>/dev/null | grep Raspbian
#if [ "$?" -ne "0" ]; then
#    echo "This OS is not Raspbian. Exiting..."
#    exit 1
#fi

# Determine which version of Raspbian we are running on
#VERSION=`lsb_release -c 2>/dev/null | awk '{print $2}'`
#echo "Version of Raspbian determined to be: $VERSION"

#if [ "$VERSION" == "jessie" ]; then
#    UBUNTU_VERSION="trusty"
#elif [ "$VERSION" == "wheezy" ]; then
#    UBUNTU_VERSION="precise"
#else
#    echo "Not running Raspbian Wheezy or Jessie. Exiting..."
#    exit 1;
#fi

# Remove any existing Java
#sudo apt-get -y autoremove
#sudo apt-get -y remove --purge oracle-java8-jdk oracle-java7-jdk openjdk-7-jre openjdk-8-jre

# Install Java from Ubuntu's PPA
# http://linuxg.net/how-to-install-the-oracle-java-8-on-debian-wheezy-and-debian-jessie-via-repository/
#sudo sh -c "echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu $UBUNTU_VERSION main\" >> /etc/apt/sources.list"
#sudo sh -c "echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu $UBUNTU_VERSION main\" >> /etc/apt/sources.list"
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
#sudo apt-get update
#sudo apt-get -y install oracle-java8-installer
#sudo apt-get -y install oracle-java8-set-default
##############################
##############################

##############################
# Tomcat                     #
##############################
#cd ~/Downloads
#wget http://ftp.wayne.edu/apache/tomcat/tomcat-8/v8.5.8/bin/apache-tomcat-8.5.8.tar.gz
#tar -zxvf apache-tomcat-8.5.8.tar.gz
#mv apache-tomcat-8.5.8 tomcat8
#sudo mv ~/Downloads/tomcat8 /opt
##############################
##############################
