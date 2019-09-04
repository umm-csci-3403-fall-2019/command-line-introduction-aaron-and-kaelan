#!/usr/bin/env bash

start_directory=$(pwd)

cd $2

tar xf $start_directory/NthPrime.tgz

gcc -o $2/NthPrime/NthPrime $2/NthPrime/main.c $2/NthPrime/nth_prime.c

NthPrime/NthPrime $1
