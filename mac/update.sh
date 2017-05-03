# # Update App Store apps
# sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade
brew cleanup
brew cask cleanup

# Update Python packages
pip2 list --outdated | cut -d " " -f 1  | xargs -n1 sudo -H pip2 install -U
pip3 list --outdated | cut -d " " -f 1  | xargs -n1 sudo -H pip3 install -U

# # Update npm & packages
# npm install npm -g
# npm update -g

# # Update Ruby & gems
# sudo gem update —system
# sudo gem update

