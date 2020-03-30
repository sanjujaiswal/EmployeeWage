#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants and variables

WagePerHour=20;
Present=1;
PartTimePresent=2;

CheckAttendance=$((RANDOM%3));

if [ $CheckAttendance -eq $Present ]
then
	EmpHour=8;

elif [ $CheckAttendance -eq $PartTimePresent ]
then
	 EmpHour=4;

else
	EmpHour=0;
fi

employeeDailyWage=$((EmpHour*WagePerHour));
