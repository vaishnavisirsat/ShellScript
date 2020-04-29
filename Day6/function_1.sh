#!/bin/bash -x
celFreezLimit=99;
ferFreezLimit=212;

function celsToFah()
		{
			read -p "Enter the temp in Celsius: " cel;
			checkFreezOrBoil $cel;
			fe=$(( ($cel * 9/5) +32 ));
		}

function fahToCels()	
		{
			read -p "Enter the temp in Fer: " fer;
			checkFreezOrBoil $fer;
			cels=$(( ($fer - 32) *5/9 ));
		}

function checkFreezOrBoil()	
{
	if [[ $cel -lt $celFreezLimit ]]
	then
			echo "Freezing point";
		elif [[ $fer -lt $ferFreezLimit ]]
		then
			echo "Freezing point";
		else
		echo "Boiling point";
	fi
}

echo celsiusTOFahrahenit=1;
echo fahrahenitToCelsius=2;
read -p "Enter conversion u want: " choice;
case $choice in
	1)
		celsToFah;;
	2)
		fahToCels;;
	*)
		echo "invalid selection";;
esac
