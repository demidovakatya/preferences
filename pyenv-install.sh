# https://github.com/yyuu/pyenv-pip-migrate


# -------- sudo-install like a boss
sudo pip install virtualenvwrapper
mkdir ~/.virtualenvs

# if zsh
echo "export WORKON_HOME=$HOME/.virtualenvs" > ~/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" > ~/.zshrc

# # else
# echo "export WORKON_HOME=$HOME/.virtualenvs" > ~/.bashrc
# echo "source /usr/local/bin/virtualenvwrapper.sh" > ~/.bashrc


# -------- install for user

pip install virtualenvwrapper --user
mkdir ~/.virtualenvs

# if zsh
echo "export WORKON_HOME=$HOME/.virtualenvs" > ~/.zshrc
# for mac
echo "source ~/Library/Python/2.7/bin/virtualenvwrapper.sh" > ~/.zshrc
# for ubuntu
echo "source ~/.local/lib/python2.7/virtualenvwrapper.sh" > ~/.zshrc

# else
# why the fuck you don't use zsh?!


