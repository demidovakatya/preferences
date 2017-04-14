awk '{print $1}' filename.csv | uniq | sort | split -l 4999999 - part_

# if a header is needed
header = 'header!'
for file in part_*
do
    echo $header | cat - $file > temp && mv temp $file
done

