#!/bin/bash 

for (( i=0; i<10; i++ ))
do
	numbers[((i))]=$((RANDOM%900+100))
done
echo "Original numbers : ${numbers[@]}"

for (( i=0; i<=9; i++ ))
do
	for (( j=$i; j<=9; j++ ))
   	do
      		if [ ${numbers[$i]} -gt ${numbers[$j]}  ]
   		then
       			t=${numbers[$i]}
       			numbers[$i]=${numbers[$j]}
       			numbers[$j]=$t
      		fi
   	done
done

echo "Numbers after sort : ${numbers[@]}"
echo "Second Minimum Number : ${numbers[1]}"
echo "Second Maximum Number : ${numbers[8]}"
