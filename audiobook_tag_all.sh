#!/bin/bash

IFS=$'\n'

CURRENT=`pwd`

for f in `find . -type f -name '*.mp3' -printf '%h\n' | sort -u`
do 
	cd "$CURRENT"
	rp=`realpath $f`
	cd "$rp"
	audiobook_tag.sh
done
 
