# Updates Python packages for python 2&3

pip2 list --outdated | cut -d " " -f 1  | xargs -n1 sudo -H pip2 install -U
pip3 list --outdated | cut -d " " -f 1  | xargs -n1 sudo -H pip3 install -U


# Updates pip*-freeze.txt files

pip2 freeze --all | cut -d = -f 1 > pip2_freeze.txt
pip3 freeze --all | cut -d = -f 1 > pip3_freeze.txt
diff pip3_freeze.txt pip2_freeze.txt | grep "< " | awk '{print $2}' > pip3_not2.txt
diff pip3_freeze.txt pip2_freeze.txt | grep "> " | awk '{print $2}' > pip2_not3.txt
 
cat pip2_not3.txt | xargs -n1 sudo -H pip3 install
cat pip3_not2.txt | xargs -n1 sudo -H pip2 install
