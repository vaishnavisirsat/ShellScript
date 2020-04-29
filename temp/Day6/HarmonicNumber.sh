#!/bin/bash -x
read -p "Enter the value of n:" n;
s=0.0;
for (( i=1; i<=n; i++ ))
do
	s=$(( s + 1/i )) ;
	echo $s
done
