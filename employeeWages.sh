#!/bin/bash -x
echo "Welcome To Employee Wage Computation Program"

#Declaration of contants
WAGE_PER_HOUR=20;
DAY_IN_MONTH=20;
NUMBER=3;
NUM_WORKING_DAYS=20;
WORK_HRS_IN_MONTH=100;

#Declaration of variables
present=1;
partTimePresent=2;
empMonthWage=0;
empHour=0;
days=0;
hours=0;
checkAttendance=0;
dailyWage=0;
totalAmount=0;
totalWorkingHr=0;

function getWorkHr(){
	case $1 in
	$present)
		empHour=8;
		echo $empHour;
		;;
	$partTimePresent)
		empHour=4;
		echo $empHour;
		;;
	*)
		empHour=0;
		echo $empHour;
		;;
	esac
}

# To check number of working days and total working hours in a month
function wagesInMonth(){

while [[ $days -ne NUM_WORKING_DAYS && $hours -le $WORK_HRS_IN_MONTH ]]
do
	checkAttendance=$((RANDOM%$NUMBER));
	empHour=$( getWorkHr $checkAttendance )
	hours=$(($hours+$empHour))

	#calculate employee's daily wages
	dailyWage=$((empHour*WAGE_PER_HOUR))
	dailyWage[$days]=$dailyWage;
	((days++))

	#calculate employee's monthly wages
	empMonthWage=$((dailyWage+empMonthWage))
	empMonthwage[$days]=$empMonthwage;
done
}

function tatalWageCal(){
totalAmount=$(($dailyWage+$empMonthWage))
totalAmount[$days]=$totalAmount;
}

#Function calling
wagesInMonth
tatalWageCal
echo -e "Days :${!dailyWage[@]} \nDaily Wages: ${dailyWage[@]}"
echo "Total amount in month :$totalAmount"
echo "Total working hours in month :$hours"
