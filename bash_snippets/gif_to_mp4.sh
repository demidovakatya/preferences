#!/usr/bin/env bash

# convert all gifs in a folder to mp4
for f in *.gif; do 
    echo "$f"; 
    new=$(echo "$f"|sed 's/\.mp4\.gif/.mp4/g'|sed 's/\.gif/.mp4/g'); 
    ffmpeg -i "$f" -loglevel quiet -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "$new"; 
	# COMMENT THIS LINE IF YOU DON'T WANT TO REMOVE THE GIFS:
    rm "$f";
done

