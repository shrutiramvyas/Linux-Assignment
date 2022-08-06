# Write a program that reads 5 Random 3 Digit values and then outputs the minimum
# and the maximum value

#!bin/bash
a=$((RANDOM%100+900));  
b=$((RANDOM%100+900));  
c=$((RANDOM%100+900));  
d=$((RANDOM%100+900));  
e=$((RANDOM%100+900));
echo "The numbers are $a , $b , $c , $d , $e";
if [ $a -gt $b ]
then
    if [ $a -gt $c ]
    then
        if [ $a -gt $d ]
        then
            if [ $a -gt $e ]
            then
                echo "$a is greatest number";
            elif [ $e -gt $d ]
            then
                if [ $e -gt $c ]
                then 
                    if [ $e -gt $b ]
                    then 
                        echo "$e is greatest number";
                    elif [ $b -gt $c ]
                    then
                        if [ $b -gt $d ]
                        then
                            echo "$b is greatest";
                        elif [ $d -gt $c ]
                        then
                            echo "$d is greatest";
                        else
                            echo "$c is greatest";
                        fi
                    else
                        echo "$c is greatest";
                    fi
                else
                    echo "$c is greatest";
                fi
            else
                echo "$d is greatest";
            fi
        else   
            echo "$d is greatest";
        fi
    else
        echo "$c is greatest";
    fi
else
    echo "$b is greatest";
fi
                    
                        
