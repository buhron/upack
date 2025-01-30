#!/bin/bash
mkdir $UPACK_PREFIX
# Fetch the non-existent bootstrap archives...
curl https://buhron.gtihub.io/upack-pkgs/pkgs/bootstrap/archive/bootstrap-1.0.0-$(uname -m).zip -#L -o /tmp/upack/bootstrap.zip
# Post-installation messages
if [ $? = "0" ]; then
 printf '[✅] Upack successfully installed!\n'
elif [ $? = "130"]; then
 printf '[❌] Upack installation was interrupted by user.'
else
 printf '[❌] Upack failed to install. There may be a log above to see what happened.'
fi
