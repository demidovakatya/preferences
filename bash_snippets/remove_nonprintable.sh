# replaces \x01 (^A) with tab (\t)
cat before.txt | sed 's/\x01/\t/g' >> after.txt 
