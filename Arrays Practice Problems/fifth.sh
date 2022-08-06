# Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,etc and store them in an array

#!bin/bash


k=0;
for (( i=0; i<=100; i++ ))
do
    if [ $i -gt 9 ]
    then
        s=$i;
        m=$(($i%10));
        q=$q$m;
        n=$(($i/10));
        if [[ $s -eq $q ]]
        then
            final[k]=$q;
            ((k++));
        fi
    fi
done
echo ${final[@]};
