#!/usr/bin/bash

# Variable $ that gets the PID of the current shel
echo $$

# Variable 0 gets the filename of the current shell script, command, program or function 
echo $0

# Variable n is a number that maps the arguments positions (1..9)
echo $1 $2

# Variable # gets the total number of arguments given
echo $# 

# Variable * joins all the argument as a double quoted string 
echo $*

# Variable @ lists the arguments double quoted individually
echo $@

# Variable ? shows the status of the last command executed
echo $?

# Variable ! gives the process number of the last background command
echo $!

echo "list token"
for token in $*
do 
	echo $token
done

echo "list token2"
for token2 in $@
do
	echo $token2
done
