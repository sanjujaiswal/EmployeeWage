#!/bin/bash -x

echo "Welcome To Employee Wage Computation Program"

#Declaration of contants
WagePerHour=20;
DayInMonth=20;

#Declaration of variables
Present=1;
PartTimePresent=2;
EmpMonthWage=0;
EmpHour=0;
Days=0;
Hours=0;

function getWorkHr(){
	case $1 in
		$Present)
			EmpHour=8;
			echo $EmpHour;
			;;
		$PartTimePresent)
			EmpHour=4;
			echo $EmpHour;
			;;
		*)
			EmpHour=0;
			echo $EmpHour;
			;;
	esac
}


while [[ $Days -ne 20 && $Hours -le 100 ]]
do
		CheckAttendance=$((RANDOM%3));
		EmpHour=$( getWorkHr $CheckAttendance )
		Hours=$((Hours+$EmpHour))
		((Days++))
		DailyWage=$((EmpHour*WagePerHour))
		DailyWage[$Days]=$DailyWage;

		EmpMonthWage=$((DailyWage+EmpMonthWage))

done

echo "${DailyWage[@]}"
