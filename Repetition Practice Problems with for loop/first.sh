# Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.

#!bin/bash

FindPowers(){
    last=$(($1+1))
    for(( a=1;a<=$last;a++ ))
    do
 	    echo $((2**$a));
    done
}

FindPowers 10