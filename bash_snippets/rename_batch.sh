

for file in *.mp3
do
    newname=`echo "$file" | sed 's/ \[Music.*\.mp3/\.mp3/g'`
    mv $file ./$newname
done