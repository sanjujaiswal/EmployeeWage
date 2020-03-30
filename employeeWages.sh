#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants and variables

WagePerHour=20;
Present=1;
PartTimePresent=2;

CheckAttendance=$((RANDOM%3));

case $Checkattendance in
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

employeeDailyWage=$((EmpHour*WagePerHour));
