#!/usr/bin/env bash

directory=$2

number=$1

start_directory=$(pwd)

cd $directory

tar xf $start_directory/NthPrime.tgz

gcc -o $directory/NthPrime/NthPrime $directory/NthPrime/main.c $directory/NthPrime/nth_prime.c

NthPrime/NthPrime $number
