# Write a function to check if the two numbers are Palindromes

#!bin/bash

Palindrome(){
    num1=$1
    num2=$2
    while [ $num1 -ne 0 ]
    do
        m=$(($num1%10))
        p=$p$m;
        n=$(($num1/10));
        num1=$n;
    done
    while [ $num2 -ne 0 ]
    do
        m=$(($num2%10))
        q=$q$m;
        n=$(($num2/10));
        num2=$n;
    done
    if [ $p -eq $q ] 
    then
        echo "The given numbers are Palindrome"
    else
        echo "The given numbers are nt palindrome"
    fi
}

Palindrome 123 123