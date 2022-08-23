#!/bin/bash 

min1=0
min2=0
max1=0
max2=0
for (( i=0; i<10; i++ ))
do
	numbers[((i))]=$((RANDOM%900+100))
	if (( $i==0 ))
	then 
		max1=$((numbers[i]))
		max2=$((numbers[i]))
		min1=$((numbers[i]))
                min2=$((numbers[i]))
	fi
	if [ $((numbers[i])) -gt $max1 ]
	then
		max2=$max1
		max1=$((numbers[i]))
	fi
	if [ $((numbers[i])) -lt $min1 ]
        then
		min2=$min1
                min1=$((numbers[i]))
        fi
done

echo ${numbers[@]}
echo "Second Minimum Number : $min2"
echo "Second Maximum Number : $max2"
