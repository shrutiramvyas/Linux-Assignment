# Extend the above program to sort the array and then find the 2nd largest
# and the 2nd smallest element.

#!bin/bash

for ((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100));
done
echo ${arr[@]};

for ((i=0;i<${#arr[@]}-1;i++))
do
	for ((j=i+1;j<${#arr[@]};j++))
	do
        if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]};
			arr[$i]=${arr[j]};
			arr[$j]=$temp;
		fi
    done
done

echo ${arr[@]};

secondSmallest=${arr[1]}; 

echo "Second Smallest: $secondSmallest";
secondlargest=${arr[-2]};
echo "Second Largest: $secondlargest";