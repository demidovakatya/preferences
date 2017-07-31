# ==========================================
# 		.profile 
# ==========================================

# global settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='subl -w'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# Load the shell dotfiles, and then some:
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# homebrew
BREW_DIR="$(brew --prefix)"
BREW_SHARE=$BREW_DIR/share
export PATH=$BREW_DIR/bin:$BREW_DIR/sbin:$PATH
export MANPATH=$BREW_SHARE/man:$MANPATH

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$BREW_SHARE/bash-completion/completions" ]; then
    source "$BREW_SHARE/bash-completion/completions";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
    complete -o default -o nospace -F _git g;
fi;

source "$BREW_SHARE/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$BREW_SHARE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

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

# export PYTHONPATH=`brew --prefix`/lib/python2.7/site-packages
export PIP_CONFIG_FILE="/Users/mac/Library/Application Support/pip/pip.conf"

export HADOOP_HOME="/usr/local/Cellar/hadoop/2.8.0"
export PATH="$PATH:$HADOOP_HOME/bin"
export HADOOP_CONF_DIR="$HADOOP_HOME/libexec/etc/hadoop"
export HIVE_HOME="/usr/local/Cellar/hive/2.1.0/libexec"
export PATH="$PATH:$HIVE_HOME/bin"
export HIVE_CONF_DIR="$HIVE_HOME/conf"

# Java
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME=$BREW_DIR/Cellar/scala/2.12.3
# export SPARK_HOME=$BREW_DIR/Cellar/spark/1.0.1
export SPARK_HOME=$BREW_DIR/Cellar/apache-spark/2.2.0/libexec
export PATH=$PATH:$JAVA_HOME/bin:$SPARK_HOME/bin:$SCALA_HOME/bin


# iterm2  
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# export PYTHONPATH="$HOME/itermplot:$PYTHONPATH"
export PYTHONPATH="$HOME/itermplot"
export MPLBACKEND="module://itermplot"

# bashmarks https://github.com/Bilalh/shellmarks
source ~/.local/bin/shellmarks.sh

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
