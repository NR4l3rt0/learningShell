#!/usr/bin/bash

echo write get_out to get out

PS3="Choose one => " 

# It looks like as if the variable $pet is not catched, but it can be used as
# a numbered message list
select pet in dog cat horse bird ; 

#read -p "select a pet among these: dog cat horse bird " pet
do
	case $REPLY in
		dog|cat)
			echo "You can have it at home"
			;;
		horse)
			echo "That would be fun to have at home"
			;;
		bird)
			echo "Fly above"
			;;
		get_out)
			break
			;;
		*)
			echo "You chose: $REPLY, $pet ."
			;;
	esac
done

echo "Goodbye!"
