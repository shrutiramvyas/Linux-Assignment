# Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 isreached..

#!bin/bash

echo "Enter num: "
read num;
i=1;
while [ $i -ne $num ]
do
 	res=$(( 2**$i ));
    if [ $res -eq 256 ]
    then
        break
    fi
    echo $res;
    ((i++));
done
