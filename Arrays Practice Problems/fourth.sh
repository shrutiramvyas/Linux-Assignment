#!bin/bash

arr[0]=2
arr[1]=-2
arr[2]=0
arr[3]=3
arr[4]=-3
arr[5]=0

echo ${arr[@]};
Sum=0
for (( i=0;i<${#arr[@]}-2;i++ ))
do
    for (( j=i+1;j<${#arr[@]}-1;j++ ))
    do
        for (( k=j+1;k<${#arr[@]};k++ ))
        do
            s=$((${arr[i]}+${arr[j]}+${arr[k]}));
            if [ $s -eq $Sum ]
            then
                echo "Your set of sum of 0's are : (${arr[i]},${arr[j]},${arr[k]})"
            fi
        done
    done
done