#!/usr/bin/bash

# It's important to consider that symbols are for strings, letters for numbers 

if [ $# -eq 2 ]; then 
# Asignment
	num1=$1
	num2=$2
else
	num1=10
	num2=5
fi

echo "Addition: `expr $num1 + $num2`"
echo "Subtraction: `expr $num1 - $num2`"
echo "Multiplication: `expr $num1 \* $num2`"
echo "Division: `expr $num1 / $num2`"
echo "Modulus: `expr $num1 % $num2`"


[ $num1 -eq $num2 ]

# With double brackets, the double quotes can be omitted
if [[ $? -eq 0 ]]; then
	equality=true
	inequality=false
else
	equality=false
	inequality=true
fi 

echo "eq: $equality, ne: $inequality"

if [ 1 -gt 0 -a "string" == "string" ]; then
	echo "And is: $?"
fi

if [ 1 -gt 0 -o "string" != "string" ]; then
	echo "Or is: $?"
fi

if ! [[ 4 -gt 400 ]]; then
	echo "Negation is : $?"
fi
