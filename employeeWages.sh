#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants and variables

WagePerHour=20;
DayInMonth=20;
PartTimePresent=2;
Present=1;

EmpMonthWage=0;
Days=0;
Hours=0;

while [[ $Days -ne 20 && $Hours -le 100 ]]
do
	CheckAttendance=$((RANDOM%3));

case $CheckAttendance in

		$Present)
			EmpHour=8;
			Hours=$((Hours+$EmpHour))
			;;

		$PartTimePresent)
			EmpHour=4;
			Hours=$((Hours+$EmpHour))
			;;
		*)
			EmpHour=0;
			;;

	esac

	((Days++))
	DailyWage=$((EmpHour*WagePerHour))

	EmpMonthWage=$((EmpHour*WagePerHour+EmpMonthWage))

done
