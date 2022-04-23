#!/usr/bin/env bash

   hamming_difference=0
   main () {

      if [ "${#1}" -eq "${#2}" ]; then
        for letter in $( seq 1 ${#1} ); do
          if [ "${1:letter-1:1}" != "${2:letter-1:1}" ]; then
            hamming_difference=$(( ++hamming_difference ))
          fi
        done
      fi

      if [ $# -lt 2 ] || [ $# -gt 2 ];then 
         echo "Usage: hamming.sh <string1> <string2>"
         exit 1
      fi

      if [ ${#1} -ne ${#2} ]; then
          echo "strands must be of equal length"    
          exit 1
      fi

      echo $hamming_difference

   }

   main "$@"
