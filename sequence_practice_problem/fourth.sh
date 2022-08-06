# Write a program that reads 5 Random 2 Digit values , then find their sum and the average
#!bin/bash

a=$((RANDOM%89+10))
b=$((RANDOM%89+10))
c=$((RANDOM%89+10))
d=$((RANDOM%89+10))
e=$((RANDOM%89+10))

sum=$(($a+$b+$c+$d+$e))
echo sum of above random number is $sum

avg=$((sum/5))
echo Average is $avg

