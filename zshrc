# ==========================================
#                  .zshrc
# install zsh, oh-my-zsh
# save as ~/.zshrc
# ==========================================


# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# THEME
ZSH_THEME="agnoster"
export LANG=en_US.UTF-8

# OH-MY-ZSH PLUGINS
plugins=(git github pip python \
        brew brew-cask osx \
        zsh-syntax-highlighting \
        zsh-completions \
        colored-man-pages colorize thefuck)


[ -f ~/.profile ] && source ~/.profile

# autoload -Uz compinit
# compinit -i
source $ZSH/oh-my-zsh.sh
source ~/.functions
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
