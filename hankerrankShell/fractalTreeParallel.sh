#!/usr/bin/env bash

endOfLine=20
numberOfRows=20
halfRows=$(( $numberOfRows/2 ))
halfLine=$(( $endOfLine/2 ))

#echo $endOfLine $numberOfRows $halfRows

for ((i=0; i<=$numberOfRows; i++)); do
	#echo "i -> $i, $numberOfRows"
	for ((j=0; j<=$endOfLine; j++)); do
		
		#echo "j -> $j, endOfLine -> $endOfLine, i > halfRows $i >  $halfRows"
		#set -vx
		if [[ $i -gt $halfRows ]]; then
		#set +vx
		#echo "j -> $j , halfLine -> $halfLine"
			if [[ $j == $halfLine ]]; then
				echo -n 1
				continue
			else
				echo -n _
				continue
			fi
		else
		
			if [[ $j == $i || $j == $(( $endOfLine - $i )) ]]; then
				echo -n 1
			else
				echo -n _
			fi
		fi
	done

	echo

done
