#!/usr/bin/bash

if [[ $1 == "green" ]]; then
	echo "Nice color"
elif [[ $1 -ge 0 ]]; then
	echo "Ahá, nice number"
else
	echo "I don't get it"
fi
