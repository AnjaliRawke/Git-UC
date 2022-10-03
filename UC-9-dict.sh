#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsinMonth=100
empRatePerHr=20
numofWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
     case $randomcheck in
                           $isFullTime )
                                  empHrs=8
                           ;;
                           $isPartTime )
                                  empHrs=4
                           ;;
                           *)
                                  empHrs=0
                           ;;
     esac
}

while [[ $totalEmpHr -lt $maxHrsinMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
     ((totalWorkingDays++))
     randomcheck=$((RANDOM%3))
     getWorkHours $randomcheck
     totalEmpHr=$(($totalEmpHr+$empHrs))
     dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
#echo $totalsalary

echo ${dailyWages[@]}
echo ${!dailyWages[@]}
echo ${#dailyWages[@]}

