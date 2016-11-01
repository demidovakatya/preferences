sudo apt-get update
sudo apt-get upgrade


# # R
# gedit /etc/apt/sources.list
# # add this line
# # deb http://cran.rstudio.com/bin/linux /ubuntu trusty/
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
# sudo apt-get update
# sudo apt-get install r-base r-base-dev

# # Python
# sudo add-apt-repository ppa:fkrull/deadsnakes
# sudo apt-get update
# sudo apt-get install python3.5 libpython3.5-dev
# wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python3.5
# sudo easy_install-3.5 pip
# pip3 install beautifulsoup4 elasticsearch Scrapy urllib3 virtualenv wget
# pip3 install ipython jupyter
# pip3 install numpy pandas scipy matplotlib pylab scikit-learn sklearn seaborn

# # Miniconda for Python
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh
# # check installation
# conda list
# conda install numpy pandas matplotlib scipy seaborn jupyter
# conda update --all -y

# # LAMP
# sudo apt-get install apache2 mysql-server php5 libapache2-mod-php5 filezilla
# sudo /etc/init.d/apache2 restart
# php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

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
