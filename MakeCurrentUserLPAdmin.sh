#!/bin/bash

# Get currently logged-in user
loggedInUser=$(/usr/bin/stat -f "%Su" /dev/console)

# Check and add to _lpadmin group
if [ "$loggedInUser" != "root" ] && [ -n "$loggedInUser" ]; then
    /usr/sbin/dseditgroup -o edit -a "$loggedInUser" -t user _lpadmin
    echo "Added $loggedInUser to _lpadmin group."
else
    echo "No valid user found or user is root. Skipping."
fi
