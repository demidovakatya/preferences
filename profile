# ==========================================
# 		.profile
# ==========================================

# global settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='subl -w'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# Load the shell dotfiles, and then some:
for file in ~/.{path,exports,aliases,functions,extra,inputrc}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# homebrew
BREW_DIR="$(brew --prefix)"
BREW_SHARE=$BREW_DIR/share
export PATH=$BREW_DIR/bin:$BREW_DIR/sbin:$PATH
export MANPATH=$BREW_SHARE/man:$MANPATH

# Bash-completion
# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$BREW_SHARE/bash-completion/completions" ]; then
    source "$BREW_SHARE/bash-completion/completions";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Git-completion
# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
    complete -o default -o nospace -F _git g;
fi;

# More completion!
fpath=(usr/local/share/zsh/site-functions $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/functions/_git
# `compinit` scans $fpath, so do this before calling it.
fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit
# /bin/zsh -f -c ' $fpath'
# completion
# autoload -U compinit && compinit -y
fpath=(~/.zsh $fpath)

# More plugins: zsh-autosuggestions & zsh-syntax-highlighting
source "$BREW_SHARE/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$BREW_SHARE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PYTHON_HOME="/usr/local/lib"
# export PYTHONPATH=`brew --prefix`/lib/python2.7/site-packages
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python3.6/site-packages"
export PIP_CONFIG_FILE="/Users/mac/Library/Application Support/pip/pip.conf"


# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PYTHONPATH="$PYTHONPATH:itermplot"
export MPLBACKEND="module://itermplot"

# Other nice tools:
# bashmarks https://github.com/Bilalh/shellmarks
source ~/.local/bin/shellmarks.sh
# thefuck
eval "$(thefuck --alias)"


# ---------- OMZ
# autoload -Uz compinit
# compinit -i
# source $ZSH/oh-my-zsh.sh

