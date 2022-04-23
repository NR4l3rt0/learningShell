#!/usr/bin/bash

set -o noglob

# This is not necessary once the previous line is set  
positionalParam1=$( echo $1 | sed 's/*//g' )

main(){
  if [ $# -eq 1 ]; then
    arr=($positionalParam1)
    acronym=""
    for word in "${arr[@]}"; do
      if [[ $word =~ ^[[:alnum:]]+[,]?$ ]] || [[ $word =~ "'" ]]; then
        acronym+=$( echo ${word:0:1} | tr [:lower:] [:upper:] )
      else
        if [[ $word =~ "-" ]]; then
          oldIfs=$IFS
          IFS='-'
          tmpArr=($word)
          for subWord in "${tmpArr[@]}"; do
            acronym+=$( echo ${subWord:0:1} | tr [:lower:] [:upper:] )
          done
          IFS=$oldIfs
        elif [[ $word =~ "_" ]]; then
          cleanedWord=$( echo $word | sed 's/_//g' )
            acronym+=$( echo ${cleanedWord:0:1} | tr [:lower:] [:upper:] )
        else
          continue
        fi
      fi
    done
  fi
  
  echo $acronym
}

   main "$@"
