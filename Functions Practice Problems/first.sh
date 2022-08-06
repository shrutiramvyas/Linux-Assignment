# Help user find degF or degC based on their Conversion Selection. Use
# Case Statement and ensure that the inputs are within the Freezing Point (
# 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
# a. degF = (degC * 9/5) + 32
# b. degC = (degF – 32) * 5/9

#!bin/bash
Convert_in_Fahrenheit(){
    c=$1
    awk -v c="$c" 'BEGIN {printf("The temperature in Fahrenheit is %.2f\n", 1.8 * c + 32)}'
}
Convert_in_Celcius(){
    f=$1
    c=$(($f-32))
    awk -v f="$c" 'BEGIN {printf("The temperature in Celcius is %.2f\n", $c*0.5)}'
}
read -p "Enter degree for check in farhenheit" f
read -p "Enter degree for check in Celcius" c
if (($f <= 32 || $c >= 0 || $f <= 212 || $c >= 100))
then
    Convert_in_Fahrenheit $f
    Convert_in_Celcius $c
else
    echo "Please enter degree between freezing point and boiling point"
fi


