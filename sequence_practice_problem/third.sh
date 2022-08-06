# Add two Random Dice Number and Print the Result

#!/bin/sh

dice1=$((RANDOM%6+1));
dice2=$((RANDOM%6+1));
echo dice1 : $dice1;
echo dice2 : $dice2;
result=$(($dice1+$dice2));

echo $result;
