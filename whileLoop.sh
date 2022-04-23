#!/usr/bin/bash

action=$1

echo "### Hint: write out to get out the loop"

while [[ $action != out ]]
do 
	echo "We do ... $action"
	read -p "What should we do next? " action   
done

echo "Out of the loop!"
