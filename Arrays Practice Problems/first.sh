# Write a program in the following steps
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

for ((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100));
done
echo ${arr[@]};

first=${arr[0]};
second=${arr[0]};
size=${#arr[@]};
for (( i=0;i<size;i++ ))
do
    if (( $first < ${arr[i]} ))
    then    
        second=$first;
        first=${arr[i]};
    elif (( ${arr[i]} > $second ))
    then
            second=${arr[i]};
    fi
done
echo "The Second largest element in the array is $second";
firstsmallest=$first;
secondsmallest=$first;
for (( i=0;i<size;i++ ))
do
    if (( $firstsmallest > ${arr[i]} ))
    then    
        secondsmallest=$firstsmallest;
        firstsmallest=${arr[i]};

    elif (( ${arr[i]} < $secondsmallest && ${arr[i]} > $firstsmallest ))
    then
            secondsmallest=${arr[i]};
    fi
done
echo "The Second largest element in the array is $secondsmallest";

