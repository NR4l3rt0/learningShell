#!/usr/bin/bash


# break [n] and continue [n] allow us to alter the flow of the program's  
# execution. The number [n] must be greater than 1 since break == break [1].
# The thing to take into account is that it breaks or continues the counting
# from inside out. 

a=0
while [[ $a -ne 100 ]];
do 
	echo "value of a $a"
	a=`expr $a + 1`
	
# Infinite loop
	b=$a
	until [[ $b -lt -1 ]]
	do
		b=`expr $b \* 2`
	
		if [[ $b -gt 200 ]]; then
			echo "value breaking $b"
			break 2
		elif [[ $b -lt 5 ]]; then
			echo "value b $b"
		else
			echo "continuing"
			continue
		fi
	done
done

echo "End of the program reached"
