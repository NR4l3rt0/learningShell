#!/usr/bin/bash

while IFS= read -r country;
do
    if [ country != [:blanks:] ]; then    
        countries=( "${countries[@]}" $country)
    else
        exit
    fi
done

echo ${#countries[@]}
