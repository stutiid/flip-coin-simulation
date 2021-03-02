#!/bin/bash -x

heads=0
tails=0
for ((i=1; i<10; i++))
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
done

echo heads came : $heads
echo tails came : $tails


