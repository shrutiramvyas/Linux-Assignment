# Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

#!bin/bash

Factorial(){
    n=$1;
    fact=1;
    for (( i=n;i>=2;i-- ))
    do
        if [ $i -eq 1 ]
        then
            echo $n;
        fi
        fact=$(($fact*i));
    done
    echo "The facorial of given number is $fact";
}
echo "Enter number the find factorial: "
read num;
Factorial $num