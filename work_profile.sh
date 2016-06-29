sudo apt-get update
sudo apt-get upgrade

sudo apt-get install aptitude gdebi-core synaptic gdebi
sudo apt-get install gksu gedit leafpad

# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

# file manager
sudo apt-get install krusader konsole krename

sudo apt-get install libreoffice

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

# Python
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python3.5 libpython3.5-dev
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python3.5
sudo easy_install-3.5 pip
pip3 install beautifulsoup4 elasticsearch Scrapy urllib3 virtualenv wget
pip3 install ipython jupyter
pip3 install numpy pandas scipy matplotlib pylab scikit-learn sklearn seaborn

# # Miniconda for Python
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh
# # check installation
# conda list
# conda install numpy pandas matplotlib scipy seaborn jupyter
# conda update --all -y

# LAMP
sudo apt-get install apache2 mysql-server php5 libapache2-mod-php5 filezilla
sudo /etc/init.d/apache2 restart
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

# Enable the key combination Ctrl+Alt+Backspace for a partial reboot
gksudo leafpad /etc/default/keyboard
# # replace this line
# XKBOPTIONS=""
# # by this line
# XKBOPTIONS="terminate:ctrl_alt_bksp"

# Disable the option "save session"
sudo mkdir -v /etc/xdg/xfce4/kiosk
gksudo leafpad /etc/xdg/xfce4/kiosk/kioskrc
# # paste these lines
# [xfce4-session]
# SaveSession=NONE

# Appearance
sudo apt-get install ubuntu-artwork # ubuntu-ish theme
sudo add-apt-repository -y ppa:ravefinity-project/ppa
sudo add-apt-repository -y ppa:tiheum/equinox
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:richardgv/compton
sudo add-apt-repository -y ppa:gottcode/gcppa
sudo apt update
sudo apt install ambiance-colors radiance-colors xfce4-dockbarx-plugin dockbarx-themes-extra compton

# # Spotify
# sudo apt-key adv —keyserver hkp://keyserver.ubuntu.com:80 —recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update
# sudo apt-get install spotify-client