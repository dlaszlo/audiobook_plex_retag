#!/bin/bash

IFS=$'\n'

TRACK=1

ALBUM=`basename "$PWD"`
cd ..
ARTIST=`basename "$PWD"`
cd "$ALBUM"
echo "Előadó: $ARTIST"
echo "Album: $ALBUM"

for f in `ls -1 *.mp3`
do
	echo "Előadó: $ARTIST, Album: $ALBUM, Cím: $f, Track szám: $TRACK"
	mid3v2 --delete-all "$f"
	mid3v2 --artist="$ARTIST" --song="$ARTIST - $ALBUM $TRACK." --album="$ALBUM" --track="$TRACK" "$f"
	mid3v2 --list "$f"
	(( TRACK++ ))
done
 

