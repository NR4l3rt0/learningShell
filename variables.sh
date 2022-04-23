#!/usr/bin/bash

name="Pauli"
age=123

# with this keyword the value is binded permanently
readonly name

echo "name: $name , age: $age"

read -p "Please, insert another age: " age

echo "new age: $age"

unset age

echo "$age, if there is no result it is because its value has been unset"

unset name
