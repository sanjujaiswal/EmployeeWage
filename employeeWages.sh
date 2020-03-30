#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants and variables

WagePerHour=20;
DayInMonth=20;
PartTimePresent=2;
Present=1;

EmpMonthWage=0;
Days=0;

while [[ $Days -ne 20 ]]
do
	CheckAttendance=$((RANDOM%3));
	case $CheckAttendance in
		$Present)
			EmpHour=8;
			;;
		$PartTimePresent)
			EmpHour=4;
			;;
		*)
			EmpHour=0;
			;;
	esac
	
	((Days++))
	EmpMonthWage=$((EmpHour*WagePerHour+EmpMonthWage))
done
