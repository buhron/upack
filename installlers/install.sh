#!/bin/bash
# set environment variables
export PATH=$PATH:$UPACK_PREFIX/bin 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$UPACK_PREFIX/lib:$UPACK_PREFIX/lib64
mkdir $UPACK_PREFIX
# Fetch the non-existent bootstrap archives...
curl https://buhron.gtihub.io/upack-pkgs/pkgs/bootstrap/archive/bootstrap-1.0.0-$(uname -m).zip -#L -o /tmp/upack/bootstrap.zip
# long command
cd $UPACK_PREFIX; unzip /tmp/upack/bootstrap.zip > /dev/null; rm $UPACK_PREFIX/upack.cfg; cp -r $UPACK_PREFIX/data/* $UPACK_PREFIX; rm -rf $UPACK_PREFIX/data
# is upack installed? if yes, great! youre ready!
which upack > /dev/null 2>&1
# Post-installation messages
if [ $? = "0" ]; then
 printf '[✅] Upack successfully installed!\n'
elif [ $? = "130"]; then
 printf '[❌] Upack installation was interrupted by user.\n'
else
 printf '[❌] Upack failed to install. There may be a log above to see what happened\n'
fi
