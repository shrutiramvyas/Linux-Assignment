# Write a program to compute Factors of a number N using prime factorization method. Logic -> Traverse till i*i <= N instead of i <= N for efficiency. O/P -> Print the prime factors of number N.

#!bin/bash

echo "Enter number: "
read num
for (( i=2; i<=$num; i++ ));do
    while [ $(($num%$i)) == 0 ];do
        echo $i
        num=$(($num/$i))
    done
done