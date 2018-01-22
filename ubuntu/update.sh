# # Update apt-get 
sudo apt-get update 
sudo apt-get -y upgrade 
sudo apt autoremove

# Update Homebrew (Cask) & packages
brew update
brew upgrade
brew cleanup

# Update Python packages
pip2 list --outdated --format=legacy | cut -d " " -f 1  | xargs -n1 sudo -H pip2 install -U
pip3 list --outdated --format=legacy | cut -d " " -f 1  | xargs -n1 sudo -H pip3 install -U

# # Update npm & packages
# npm install npm -g
# npm update -g

# # Update Ruby & gems
# sudo gem update —system
# sudo gem update

