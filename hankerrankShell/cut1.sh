#!/usr/bin/bash

# prints the 3 character of each line
cut -c 3 cut1Test.txt

# prints the 2 and 7 characters of each line
cut -c 2,7 cut1Test.txt

# prints the range 2-7 characters of each line
cut -c 2-7 cut1Test.txt

# prints from the beginning up to the 4th character of each line
cut -c -4 cut1Test.txt

# prints the first field in a file separated by tabs 
cut -f 1 cutTest.csv

# prints from the 13th character forward
cut -c 13- cutTest13th.txt

# prints its 4th word assuming that the delimiter is ' '
cut -f 4 -d ' ' cutDelemiter.txt

# prints the first 3 fields with the ' ' delimiter
cut -f 1-3 -d ' ' first3fields.txt

# prints from the second field up to the end (the tab is the delemiter)
cut -f 2- cutTest.csv
