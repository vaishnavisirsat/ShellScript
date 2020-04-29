#!/bin/bash 

read -p "Enter the value of n" n;
power=1;
for (( i=1; i<=n; i++ ))
do 
		while (( $power<256))
		do
			power=$(( $power * 2 )) ;
			echo $power 
		done
done

