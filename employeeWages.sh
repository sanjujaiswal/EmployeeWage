#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants and variables

WagePerHour=20;
FullDayHour=8;
Present=1;

CheckAttendance=$((RANDOM%2));

if [ $CheckAttendance -eq $Present ]
then
		echo "Employee is Present"
		employeeDailyWage=$((WagePerHour*FullDayHour))
		echo $employeeDailyWage

else
		echo "Employee is Absent"
		employeeDailyWage=0;

fi
