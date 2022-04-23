#!/usr/bin/bash

#read -p "How many numbers? " totalNumbers
totalNumbers=300
sum=0
#average=0 

#for (( number=1 ; number<=$totalNumbers; number++ ))
while IFS= read -r numberToAdd; 
do
	#read -p "> " numberToAdd
	sum=$(( $sum + $numberToAdd ));
done < testCase.txt
#while IFS= read -r line; do echo ">>$line<<"; done < file.txt

echo $sum
# I should change de locale because bc uses '.' and my system ','
average=$( echo "scale=4; $sum / $totalNumbers" | bc )

echo $average
printf "%.3f\n" $average


#printf "%.3f\n" $average
