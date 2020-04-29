#!/bin/bash -x

# program to check if a number is prime
read -p "Enter a number : " number

isPrime=true

for (( i=2; i<$number; i++))
do
        if [ $(( $number % $i )) -eq 0 ]
        then
                isPrime=false
        fi
done
echo $isPrime



