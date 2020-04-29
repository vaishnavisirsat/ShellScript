#!/bin/bash

read -p "Enter size of array:" SIZE
echo "Enter elements in array:"

count=1

for (( i=0; i<$SIZE; i++ ))
do
	read -p "Enter: " number
	array[i]=$number
done
echo ${array[@]}

for ((i=0; i<$(($SIZE-2)); i++ ))
do
	for (( j=$((i+1)); j<$(($SIZE-1));  j++ ))
	do

		for (( k=$((j+1)); k<$SIZE; k++ ))
		do
			#here check triplatre sum=0
			if [ $(( array[$i] + array[$j] + array[$k])) -eq 0 ]
			then
				echo "triplate: " $count
				echo " ${array[$i]} "
				echo " ${array[$j]} "
				echo " ${array[$k]}"
				((counter++))
			fi
		done
	done
done
