#!/usr/bin/env bash

# Set the starting directory
start_directory=$(pwd)

cd $2

# Extract the NthPrime file into a specified directory
tar xf $start_directory/NthPrime.tgz

# Compiles the C files into the NthPrime Directory
gcc -o $2/NthPrime/NthPrime $2/NthPrime/main.c $2/NthPrime/nth_prime.c

# Runs NthPrime with a specified number
NthPrime/NthPrime $1
