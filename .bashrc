# ==========================================
# .bashrc 
# is for the configuring the interactive Bash usage, like Bash aliases, 
# setting your favorite editor, setting the Bash prompt, etc.
# ==========================================

export EDITOR=subl
export HISTFILE="$HOME/.bash_history"

SHELL_SESSION_HISTORY=0

# loads bash completion support for core Git.
# source ~/.git-completion.bash

# bash aliases (anyway, I have fish)
# if [ -f ~/.bash_aliases ]; then
    # source ~/.bash_aliases
# fi

# ==========================================
kpython(){docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python "$@"}
ikpython() {docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python ipython }
kjupyter() {(sleep 3 && open "http://$(docker-machine ip docker2):8888")& docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --no-browser --ip="\*" --notebook-dir=/tmp/working }
# Now you can use kpython as a replacement for calling python, ikpython 
# instead of ipython, and run kjupyter to start a Jupyter notebook session. 
# All of them will have immediate access to the complete data science 
# stack that Kaggle assembled.
# ==========================================

fish
