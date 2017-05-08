# ==========================================
# 		.profile 
# ==========================================

# global settings
export LC_ALL=en_US.UTF8
export LANG=en_US.UTF8
export EDITOR='subl -w'

# Load the shell dotfiles, and then some:
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# homebrew
BREW_DIR="$(brew --prefix)"
BREW_SHARE=$BREW_DIR/share
export PATH=$BREW_DIR/bin:$BREW_DIR/sbin:$PATH
export MANPATH=$BREW_DIR/share/man:$MANPATH

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$BREW_SHARE/bash-completion/bash_completion" ]; then
    source "$BREW_SHARE/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;

source "$BREW_SHARE/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$BREW_SHARE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

fpath=(usr/local/share/zsh/site-functions $fpath)
# fpath=(/usr/local/share/zsh-completions $fpath)
# /bin/zsh -f -c ' $fpath'
# completion
# autoload -U compinit && compinit -y
fpath=(~/.zsh $fpath)

# iterm2  
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PYTHONPATH=~/itermplot:$PYTHONPATH
export MPLBACKEND="module://itermplot"

# bashmarks https://github.com/Bilalh/shellmarks
source ~/.local/bin/shellmarks.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/sbin:$PATH"
export PIP_CONFIG_FILE="/Users/mac/Library/Application Support/pip/pip.conf"


# thefuck
eval "$(thefuck --alias)"


# ---------- OMZ
# autoload -Uz compinit
# compinit -i
# source $ZSH/oh-my-zsh.sh


# # pyspark https://gist.github.com/ololobus/4c221a0891775eaa86b0
# if which pyspark > /dev/null; then
#   export SPARK_HOME="/usr/local/Cellar/apache-spark/2.1.0/libexec/"
#   # export PYSPARK_SUBMIT_ARGS="--master local[2]"
# fi

# function setjdk() {
#   if [ $# -ne 0 ]; then
#    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
#    if [ -n "${JAVA_HOME+x}" ]; then
#     removeFromPath $JAVA_HOME
#    fi
#    export JAVA_HOME=`/usr/libexec/java_home -v $@`
#    export PATH=$JAVA_HOME/bin:$PATH
#   fi
#  }
# function removeFromPath() {
#   export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
# }
