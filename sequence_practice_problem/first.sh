#!/bin/sh
# Use Random Function (( RANDOM )) to get Single Digit
a=$((RANDOM%10+9));  
# (9-19)
echo $a;

