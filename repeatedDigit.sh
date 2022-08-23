#!/bin/bash 

start=0
end=100

for (( i=start; i<=end; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then 
		echo $i
	fi
done

