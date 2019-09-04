#!/usr/bin/env bash

# Extract the tar archive into the scratch directory
tar xf $1 -C $2

direct=$(pwd)

cd $2

# Set file as all files with 'DELETE ME!'
file=$(grep -Rl 'DELETE ME!')

# Loop that removes all files with 'DELETE ME!'
for file in "${file}"
do
    rm $file
done

# Cleaned files are now in working directory under cleaned + whatever the original name was
tar -czf "$direct/cleaned_$1" $(basename $1 .tgz)
