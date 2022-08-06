#!bin/bash

echo "Enter number: "
read num
n=0;
for (( i=2; i<=$num; i++ ));do
    while [ $(($num%$i)) == 0 ];do
        num=$(($num/$i));
        arr[$n]=$i;
        ((n++));
    done
done
echo "Factorization in an given array : ${arr[@]}"; 