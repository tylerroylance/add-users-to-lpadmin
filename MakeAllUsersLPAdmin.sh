#!/bin/bash

# Add 'everyone' to _lpadmin group
dseditgroup -o edit -a everyone -t group _lpadmin
echo "Added 'everyone' group to _lpadmin group."