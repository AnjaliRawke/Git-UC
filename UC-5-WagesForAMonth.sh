#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
totalsalary=0

for (( day=1; day<=$numOfWorkingDays; day++ ))
do
       randomcheck=$((RANDOM%3))
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

salary=$(($empHrs*$empRatePerHr))  #dailywage
totalsalary=$(($totalsalary+$salary))   #monthlywage

done

      #echo $salary
      #echo $totalsalary
