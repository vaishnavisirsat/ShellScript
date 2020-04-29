#!/bin/bash -x

#take value
n=$1
#variables
num=2

for (( i=1; i<=$n; i++))
do
	square=`echo "$num ^ $i " | bc `
	echo $square
done
