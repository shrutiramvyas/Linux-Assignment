# Extend the program to take a range of number as input and output the Prime Numbers in that range.

#!bin/bash

PrimeRange(){
    n=$num;
    for (( i=2; i<=$n; i++ ))
    do
        k=0;
        for (( j=2; j<=i/2; j++ ))
        do
            ex=$(($i%$j));
            if [ $ex -eq 0 ]
            then
                k=1;
                break
            fi
        done
        if [ $k -eq 0 ] 
        then
            echo "$i"
        fi
    done
}

read num;

PrimeRange $num