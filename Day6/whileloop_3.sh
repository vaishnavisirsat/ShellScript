#!/bin/bash
heads=1;
tails=0;
headCounter=0;
tailCounter=0;
while [ true ]
do
        coinFlip=$((RANDOM%2));
        case $coinFlip in
                $heads )
                        echo "Heads";
                        ((headCounter++));
                        ;;
                $tails )
                        echo "Tails";
                        ((tailCounter++));
                        ;;
        esac


        if (( $headCounter==11 ))
        then
                break;
        elif (( $tailCounter==11 ))
        then
                break;
        fi
done

