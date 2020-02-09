#!/bin/bash
# install shellcheck
set -e

ROOTDIR=${ZZROOT:-$HOME/app}
NAME="shellcheck"
TYPE=".tar.gz"
FILE="$NAME$TYPE"
DOWNLOADURL="https://storage.googleapis.com/shellcheck/shellcheck-latest.linux.x86_64.tar.xz"
echo $NAME will be installed in $ROOTDIR

mkdir -p $ROOTDIR/downloads
cd $ROOTDIR

if [ -f "downloads/$FILE" ]; then
    echo "downloads/$FILE exist"
else
    echo "$FILE does not exist, downloading from $DOWNLOADURL"
    wget $DOWNLOADURL -O $FILE
    mv $FILE downloads/
fi

mkdir -p src/$NAME
tar xf downloads/$FILE -C src/$NAME --strip-components 1

cd src/$NAME

cp shellcheck $ROOTDIR/bin


echo $NAME installed on $ROOTDIR
