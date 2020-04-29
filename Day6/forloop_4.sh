#!/bin/bash

read -p "Enter starting Number:" start
read -p "Enter last Number:" end

for (( num=$start;num<=$end;num++ ))
do 	
		isPrime=0;
		for (( count=1;count<=num;count++ ))
		do 	
				if [ $(( $num%$count )) -eq 0 ]
				then
						((isPrime++))
				fi
				done
				if [ $isPrime -eq 2 ]
				then
						echo "$num is Prime"
				fi
done
