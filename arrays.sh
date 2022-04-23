#/usr/bin/env bash

declare -a myArray
index=0

#while read country
#do
#   myArray[$index]=$country
#    index=$(($index + 1))
#done

myArray=(Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway)
myArray=("${myArray[@]}" "${myArray[@]}" "${myArray[@]}")

#for element in "${myArray[@]}"
#do
#    echo -n "$element "
#done
echo ${myArray[*]}
echo ${myArray[*]}
