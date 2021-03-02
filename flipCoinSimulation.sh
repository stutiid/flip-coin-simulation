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
	heads=0
	tails=0
	while [[ $(($heads-$tails)) -lt 2 && $(($tails-$heads)) -lt 2 ]]
	do
		coin=$((RANDOM%2))
   	if [ $coin -eq 0 ]
   	then
      	((heads++))
   	else
      	((tails++))
   	fi
	done
	if [ $heads -gt $tails ]
	then
		echo heads winby $(($heads-$tails))
	else
		echo tails winby $(($tails-$heads))
	fi
#end of tie event
elif [ $heads -gt $tails ]
then
	echo heads win by $(($heads-$tails))
else
	echo tails win by $(($tails-$heads))
fi

