#!/bin/bash
# This script generates an installation script (based on architecture) that the system runs.
# If curl is not already installed, you will need to install it via your system's package manager, as this script uses the curl command.
curl
# Post-installation messages
if [ $? = "0" ]; then
 printf '[✅] Upack successfully installed!\n'
elif [ $? = "130"]; then
 printf '[❌] Upack installation was interrupted by user.'
else
 printf '[❌] Upack failed to install. There may be a log above to see what happened.'
fi
