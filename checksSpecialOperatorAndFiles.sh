#!/usr/bin/bash

# SIZE
# -z -> checks if the size is zero length
[[ -z $0 ]] 
echo "We expect it to be false -> 1 : $?"

# -n -> checks if the size is a non-zero value
[[ -n $0 ]]
echo "We expect it to be true -> 0 : $?"

# FILES
# -b filename -> if filename is block file
# -c filename -> if "" is character file
# -d filename -> if "" is directory file
# -f filename -> if "" is ordinary file
# -g filename -> if "" file has group ID (SGID) bit set
# -k filename -> if "" file has sticky bit set
# -p filename -> if "" is a named pipe file
# -t filename -> if file descriptor is open and associated with a terminal
# -u filename -> if "" file has user ID (SUID) bit set
# -r filename -> if "" is readable
# -w filename -> if "" is writable 
# -x filename -> if "" is executable
# -s filename -> if "" has size greater than 0  
# -e filename -> if "" file exists



