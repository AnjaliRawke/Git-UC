#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numofWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
         case $randomcheck in
                               $isPartTime )
                                     empHrs=4
                               ;;
                               $isFullTime )
                                     empHrs=8
                               ;;
                               *) 
                                     empHrs=0
                               ;;
         esac
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
         ((totalWorkingDays++))
         randomcheck=$((RANDOM%3))
         getWorkHours $randomcheck
         totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
