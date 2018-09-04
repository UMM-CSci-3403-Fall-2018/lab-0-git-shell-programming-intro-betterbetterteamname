#!/bin/bash
file="$1"
filebase="${file%.*}"
directory="$2"
here=$(pwd)
mkdir -p $directory
tar -xf $file -C $directory
cd $directory/$filebase
for filename in *; do
	if grep "DELETE ME!" $filename; then
		rm -f $filename
	fi	
done
cd ..
tar -zcf $here/cleaned_$file *



