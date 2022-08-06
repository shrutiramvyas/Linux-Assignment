# Find the Magic Number

# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less then n/2 or greater
# c. Repeat till the Magic Number is reached..

#!bn/bash

echo "Guess the number between 1 to 100"
read num;
count=1;
magicNum=63;
while [ $count -ne 10 ]
do
    if [[  $num -eq $magicNum ]]
    then
        echo "You won";
        break
        exit 0;
    elif [[ $num -gt $magicNum ]]
    then
        echo "Enter lower number";
    elif [[ $num -lt     $magicNum ]]
    then
        echo "Enter higher number";
    else
        echo "Please write number only between 1 to 100"
    fi
    ((count++))
    echo "Guess another number"
    read num;
done
