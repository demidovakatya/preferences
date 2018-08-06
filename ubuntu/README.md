# Ubuntu/Linux configs 

* `terminator`: copy/move the directory to `~/.config`. It contains some configurations [Terminator](http://terminator-gtk3.readthedocs.io/en/latest/index.html)
* `apt-list.txt`

## colorize the terminal
```sh
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
```
and/or
```sh
PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '
```
