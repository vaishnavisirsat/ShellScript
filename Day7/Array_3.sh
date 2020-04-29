#!/bin/bash -x

read -p "Enter number to find prime factor : " number

count=0;
for(( i=2; i<=number; i++ ))
do
	flag=0;
	while [ $(( $number % i )) -eq 0 ]
	do
		for (( j=2; j<$i; j++ ))
		do
			if [ $(($i % j)) -eq 0 ]
			then
				flag=1;
				brak;
			fi
		done

		if [ $flag -eq 0 ]
		then
			array[count]=$i
			((count++))
		fi

		number=$(( number / i ))
	done
done
echo "${array[@]}"
