#!/bin/bash

read -p "Enter number : " num
j=0
while [ $(($num%2)) -eq 0 ]
do
	#echo 2
	num=$(($num/2))
	primeFactors[j]=2
	j=$(($j+1))
done

for (( i=3; i<=$num;  ))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		#echo "number : "$i
		num=$(($num/$i))
		primeFactors[j]=$i
		j=$(($j+1))
	fi
	i=$(($i+2))
done
echo ${primeFactors[@]}
