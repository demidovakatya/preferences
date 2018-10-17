# preferences
Personal preferences, system settings, dotfiles, and so on.

* Bash snippets;
* Settings for:
    * `chrome`
    * `git`
    * `iterm2`
    * `mac`
    * `oh-my-zsh`
    * `py`
    * `st3`
    * `vim`
* Dotfiles:
    * `aliases`
    * `functions`
    * `inputrc`
    * `profile`
    * `vimrc`
    * `zshrc`

## if your OS doesn't allow you to change shell to zsh:

`sudo vi /etc/pam.d/chsh`

and comment that line:

```
auth       required   pam_shells.so
```
