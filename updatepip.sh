# Updates Python packages for python 2&3

pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U
pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U