#!/usr/bin/bash

variable=$1  

case "$variable" in
	"name") echo "This is a name"
	;;
	"4") echo "This is a number"
	;;
# Does not work -> "co*") echo "Not sure if regex will work"
#;;
	*) echo "Warum nicht, oder?"
	;;
esac

