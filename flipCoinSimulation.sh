#!/bin/bash -x

heads=0
tails=0
while [[ $heads -ne 21 && $tails -ne 21 ]]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
done

if [ $heads -eq $tails ]
then
	echo its a tie
elif [ $heads -gt $tails ]
then
	echo heads win by $(($heads-$tails))
else
	echo tails win by $(($tails-$heads))
fi

