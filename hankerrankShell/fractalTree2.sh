#!/usr/bin/env bash

endOfLine=100
numberOfRows=63
halfRows=$(( $numberOfRows/2 ))
halfLine=$(( $endOfLine/2 ))

for ((i=0; i<=$numberOfRows; i++)); do
	for ((j=0; j<=$endOfLine; j++)); do
		
		if [[ $i -gt $halfRows ]]; then

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
