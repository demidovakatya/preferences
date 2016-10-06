# One command to update them all.

function update
    set $brew brew update; brew upgrade;
    set $pip2 pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip2 install -U -q;
    set $pip3 pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip3 install -U -q;
    sh -c $brew;
    sudo sh -c $pip2$pip3
    end
