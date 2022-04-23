#!/usr/bin/bash

result=""

main() {
  if [ $# -eq 1 ]; then
    if(( $1%3 == 0 )); then
      result+="Pling"
    fi
    if(( $1%5 == 0 )); then
      result+="Plang"
    fi
    if(( $1%7 == 0 )); then
      result+="Plong"
    fi
  else
    exit 1
  fi

  if [ -z $result ]; then
    result=$1
  fi 
  
  echo $result
}

main "$@"
