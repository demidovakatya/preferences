while read ltr; do 
    echo $ltr
    egrep "^$ltr" sorted_tmp_a* >> $ltr.txt 
done < <(fold -w1 <<<"0123456789ABCDEF")
