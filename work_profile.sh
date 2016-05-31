sudo apt-get update
sudo apt-get upgrade

sudo apt-get install aptitude gdebi-core

# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

sudo apt-get install libreoffice gedit

# Sublime Text 3
# source: http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

wget "http://download.skype.com/linux/skype-ubuntu-precise_4.2.0.13-1_i386.deb"
sudo gdebi ~/Downloads/skype-ubuntu-precise_4.2.0.13-1_i386.deb

wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb"
sudo gdebi ~/Downloads/dropbox_1.6.0_amd64.deb

# R
gedit /etc/apt/sources.list
# add this line
# deb http://cran.rstudio.com/bin/linux /ubuntu trusty/
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base r-base-dev

# Appearance
sudo add-apt-repository -y ppa:ravefinity-project/ppa
sudo add-apt-repository -y ppa:tiheum/equinox
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:richardgv/compton
sudo add-apt-repository -y ppa:gottcode/gcppa
sudo apt update
sudo apt install ambiance-colors radiance-colors xfce4-dockbarx-plugin dockbarx-themes-extra compton
