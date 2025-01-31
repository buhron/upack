#!/bin/bash
export UPACK_PREFIX=/opt/upack
echo "Warning: upack is in development phase and may not work properly"
# set environment variables
echo "Setting environment variables..."
export PATH=$PATH:$UPACK_PREFIX/bin 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$UPACK_PREFIX/lib:$UPACK_PREFIX/lib64
mkdir $UPACK_PREFIX
# Fetch the non-existent bootstrap archives...
echo "Downloading bootstrap archive..."
curl https://buhron.github.io/upack-pkgs/pkgs/bootstrap/bootstrap-1.0.0-$(uname -m).zip -#L -o /tmp/upack/bootstrap.zip
# long command to extract bootstrap and delete all the upack-package specific stuff that comes with it
cd $UPACK_PREFIX; unzip /tmp/upack/bootstrap.zip > /dev/null 2>&1; rm $UPACK_PREFIX/upack.cfg > /dev/null 2>&1; cp -r $UPACK_PREFIX/data/* $UPACK_PREFIX; rm -rf $UPACK_PREFIX/data
# is upack installed? if yes, great! youre ready!
which upack > /dev/null 2>&1
# chmod 777 the upack directory because everyone deserves a chance to isntall upack packages :)
chmod 777 -R $UPACK_PREFIX
# Post-installation messages
if [ $? = "0" ]; then
 printf '[✅] Upack successfully installed!\n'
elif [ $? = "130" ]; then
 printf '[❌] Upack installation was interrupted by user.\n'
else
 printf '[❌] Upack failed to install. There may be a log above to see what happened\n'
fi
