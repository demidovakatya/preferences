### Getting zsh and oh-my-zsh to work on Mac

```bash
brew install zsh zsh-completions
```

Install oh-my-zsh on top of zsh to get additional functionality

    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

if you're still in the default shell, change default shell to zsh manually

```bash
chsh -s /usr/local/bin/zsh
```

edit the `~/.zshrc` by opening the file in a text editor (and by copying contents of [this file](https://github.com/demidovakatya/preferences/blob/master/zsh/zshrc)).

### Getting zsh and oh-my-zsh to work in Ubuntu 

[source](https://gist.github.com/tsabat/1498393)

Prereq:

```bash
apt-get install zsh
apt-get install git-core
```

Getting zsh to work in ubuntu is weird, since `sh` does not understand the `source` command. So, you do this to install zsh

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

and then you change your shell to zsh

    chsh -s `which zsh`

and then restart

    sudo shutdown -r 0

Then copy contents of [this file](https://github.com/demidovakatya/preferences/blob/master/zsh/zshrc_ubuntu) to `~/.zshrc`

