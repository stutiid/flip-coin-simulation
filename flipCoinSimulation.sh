#!/bin/bash -x

coin=$((RANDOM%2))

if [ $coin -eq 0 ]
then
	echo heads
else
	echo tails
fi




