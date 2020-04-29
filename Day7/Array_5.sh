#!/bin/bash 

for (( number=0; number<=100; number++ ))
do
	reminder=$(($number % 10));
	divide=$((number/10));

	if [[ $reminder -eq $divide && $number -ne 0 ]]
	then
		echo $number
	fi
done
