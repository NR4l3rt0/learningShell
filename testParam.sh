#!/usr/bin/bash

i=4
echo $0
for el in "$@"
do
  echo ${#el}
done
