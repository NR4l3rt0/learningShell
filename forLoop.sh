#!/usr/bin/bash


echo "Who sings you say?"

# We pass an array (list) after the in keyword 
for person in you Pete somebody_else
do
	echo $person
done

echo "You know..., maybe we should look for more people"

# A real example may be:
for exercise_name in $( ls $HOME/learningShell )
do
	echo "I practiced $exercise_name"
done
