# Write a program that takes a command-line argument n and prints the nth harmonic number. Harmonic Number is of the form

#!bin/bash

Harmonic(){
    n=$1;
    for(( i=1;i<=$n;i++ ))
    do
        temp+=$((1/$i))
    done
    echo $temp
}

Harmonic 6