#!/bin/bash


curl https://buhron.github.io/upack-pkgs/pkgs/
# Post-installation messages
if [ $? = "0" ]; then
 printf '[✅] Upack successfully installed!\n'
elif [ $? = "130"]; then
 printf '[❌] Upack installation was interrupted by user.'
else
 printf '[❌] Upack failed to install. There may be a log above to see what happened.'
fi
