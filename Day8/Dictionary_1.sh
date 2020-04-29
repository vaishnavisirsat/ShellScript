#!/bin/bash -x

for (( number=1;number<=6;number++ ))
do
	dice[number]=0
done

function getCurrentDiceValue() {
	check=$(($(($RANDOM%6))+1))
	echo $check
}

function start() {
	for((  ; ; ))
	do
		val="$(getCurrentDiceValue)"
		dice[$val]=$((${dice[$val]}+1))
	if [ ${dice[$val]} -eq 10 ]
	then
		maxValue=$val
		break
	fi
	done
echo "Number after rolling:"${dice[*]}
echo "Number on each sides of dice:"  ${!dice[*]}
}

function findMin() {
	minValue=${dice[1]}
	for (( number=1; number<=${#dice[*]}; number++ ))
	do
        	if [ $minValue  -gt ${dice[number]} ]
                then
                	minValue=$number
        	fi
	done
}

start
findMin
echo "The number reached minimum times is:" $minValue
echo "The number reachead maximun times is:" $maxValue
