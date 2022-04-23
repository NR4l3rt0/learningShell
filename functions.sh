#!/usr/bin/bash

# Functions can be set in a script or in special firectories
# such as .profile, that way it can be automatically used 
# (if that configuration matches the one set for the current user)
# to unset a function use the command   unset -f function_name
greeting() {
	echo "Hello $1"
	what_next  
	returned_value=$?
	echo "This was return by the other function: $returned_value"
}

what_next() {
	echo "I've been invoked automatically"
	return 7  

	this will not be executed
}

# Calling the function
greeting World
