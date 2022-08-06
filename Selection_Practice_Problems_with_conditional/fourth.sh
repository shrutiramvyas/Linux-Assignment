# Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.

#!bin/bash
Result=$((RANDOM%2))
if [[ $Result -eq 0 ]]; then
    echo HEADS
else
    echo TAILS
fi
