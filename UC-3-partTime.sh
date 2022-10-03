#!/bin/bash -x

ispartTime=1
isfullTime=2
empRatePerHr=20
randomcheck=$((RANDOM%3))

if [ $isfullTime -eq $randomcheck ]
then
        empHrs=8
elif [ $ispartTime -eq $randomcheck ]
then
        empHrs=4
else
        empHrs=0
fi

Salary=$(($empHrs*$empRatePerHr))
echo $Salary
