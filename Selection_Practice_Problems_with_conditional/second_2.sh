# Write a program that takes day and month from the command line and prints true if
# day of month is between March 20 and June 20, false otherwise.

#!bin/bash

read -p " Enter Date: " Date
read -p " Enter Month: " Month

if [[ $Month = "April" -o $Month = "May" -o $Month = "april" -o $Month = "may" -a  $Date -le 31 -a $Date -ge 1 ]];then
    echo "True";
elif [[ $Month = "March" -o $Month = "march" -a $Date -ge 20 -a -le 31 ]];then
    echo "True";
elif [[ $Month = "June" -o $Month = "june" -a $Date -le 20 -a -ge 1 ]];then 
    echo "True";
else    
    echo "False";
fi
