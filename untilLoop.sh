#!/usr/bin/bash

num1=2 

until [[ ! $num1 -lt 160 ]]
do
# 	echo -n $num1 "" <-- gives the same result as the next expression
	echo -n "$num1 "
	num1=`expr $num1 \* 2`
done

echo $num1 "out"
echo "Much bigger now"
