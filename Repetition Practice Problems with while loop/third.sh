# Extend the Flip Coin problem till either Heads or Tails wins 11 times.

#!bin/bash
flip=$((RANDOM%2));
echo $flip
head=0;
tail=0;
while [ $head -ne 12 -o $tail -ne 12 ]
do
    if [[ $flip -eq 0 ]] 
    then
        ((tail++));
        echo "tail : $tail"
    else
        ((head++));
        echo "head : $head"
    fi
    if [[ $head -eq 11 ]]
    then    
        echo "Head won";
        break;
    elif [[ $tail -eq 11 ]]
    then
        echo "Tail won";
        break;
    fi
    flip=$((RANDOM%2));  
done

