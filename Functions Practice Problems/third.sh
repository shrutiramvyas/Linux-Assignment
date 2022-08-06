# Take a number from user and check if the number is a Prime then show that its palindrome is also prime
# a. Write function check if number is Prime
# b. Write function to get the Palindrome.
# c. Check if the Palindrome number is also prime

PrimeAndPalindrome(){
    num=$1
    num1=$num
    echo $num;
    for (( i=2;i<$num/2;i++ ))
    do
        ans=$(( $num%$i ))
        if [ $ans -eq 0 ]
        then
            echo "The number is not prime number"
            exit 0
        fi
    done
    while [ $num -ne 0 ]
    do
        m=$(($num%10))
        q=$q$m;
        n=$(($num/10));
        num=$n;
    done
    if [ $num1 -eq $q ]
    then
        echo "The number is both prime and Palindrome"; 
    fi
    
}

PrimeAndPalindrome 11