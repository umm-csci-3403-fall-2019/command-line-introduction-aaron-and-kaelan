#!/usr/bin/env bash

tar xf $1 -C $2

direct=$(pwd)

cd $2

file=$(grep -Rl 'DELETE ME!')

for file in "${file}"
do
    rm $file
done

tar -czf "$direct/cleaned_$1" $(basename $1 .tgz)
