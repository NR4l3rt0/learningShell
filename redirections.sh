#!/usr/bin/bash

# a > b  -> from a to b
# a >> b -> from a to b appending
# a < b  -> from b to a
# << heredoc |  [command] <<[-] 'delimiter'
# command to be executed, [-] will put tabs (it seems 
# that now is different in bash at least, delimiter is the
# key for the end of the file. If quoted then variables will
# not be expanded. The result can also be piped or reached with ssh
# Also take into account the file descriptors n>&m (stderr 2, 
# stdout 1 (or omitted), stdin 0 (or omitted)

cat << EOF > testing.txt ; cat testing.txt

This is created
from the file itself.
   It writes until
it is reached
 
the magic word after the delimiter
EOF

echo "So this would not be read"
