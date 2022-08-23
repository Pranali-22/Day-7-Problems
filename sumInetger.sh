#!/bin/bash 

nums=(10,-6,-4)
sum=0
for (( i=0; i<3; i++ ))
do
	sum=$(($sum+${nums[i]}))
done

if [ $sum==0 ]
then
	echo "Sum of 3 integers is zero.."
else
	echo "Sum of 3 integers is not zero.."
fi
