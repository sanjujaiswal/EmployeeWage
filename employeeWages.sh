#!/bin/bash

echo "Welcome To Employee Wage Computation Program"

Attendence=$((RANDOM % 2))

if [[ $Attendence -eq 1 ]]
then
	echo "Head"
else
	echo "Tail"
fi
