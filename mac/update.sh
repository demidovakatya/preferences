# # Update App Store apps
# sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade
brew cleanup

# Update Python packages
pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip2 install -U
pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip3 install -U


# # Update npm & packages
# npm install npm -g
# npm update -g

# # Update Ruby & gems
# sudo gem update —system
# sudo gem update

