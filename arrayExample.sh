#!/usr/bin/bash

array_elements=($0 $1 $2 $3 $4)

# Variable $ that gets the PID of the current shel
echo $$

# Variable 0 gets the filename of the current shell script, command, program or function 
echo ${array_elements[0]}

# Variable n is a number that maps the arguments positions (1..9)
echo ${array_elements[2]}

# Variable # gets the total number of arguments given
array_elements[7]="last-value position 7"
echo ${array_elements[7]}
echo $# 

# Variable * joins all the argument as a double quoted string 
echo ${array_elements[*]}

# Variable @ lists the arguments double quoted individually
echo ${array_elements[@]}

# Variable ? shows the status of the last command executed
echo $?

# Variable ! gives the process number of the last background command
echo $!

echo "list array_elements"
for element in ${array_elements[@]}
do 
	echo $element
done

echo "list array_elements *"
for element in ${array_elements[*]}
do
	echo $element
done
