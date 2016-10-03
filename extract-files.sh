#!/bin/sh

VENDOR=quaocl
DEVICE=cololo

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling device files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp /home/nikit/Desktop/android_device_samsung_grandprimeve3g-cm-12.1/g361h/$FILE $BASE/$FILE
    echo "$FILE pulled"
done

./setup-makefiles.sh
