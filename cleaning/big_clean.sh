#!/bin/bash
file="$1"
directory="$2"
here=$(pwd)
mkdir $directory
tar -xf $file -C $directory
cd $directory
for filename in $directory; do
	if grep -Fxq "DELETE ME!" "$filename"; then
		rm filename
	fi
done



