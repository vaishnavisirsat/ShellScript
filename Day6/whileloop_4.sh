#!/bin/bash -x
money=100;
wins=0;
bets=0;

while (( money>0 && money<200 ))
do
                betResult=$(( RANDOM%2 ))
                if [ $betResult -eq 1 ]
                then
                                (( money++ ))
                                (( wins++ ))
                else
                                ((money--))
                fi
                ((bets++))
done
echo "money=$money Bets=$bets wins=$wins"

