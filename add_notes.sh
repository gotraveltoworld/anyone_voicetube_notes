#!/bin/bash

DAYS=30
FOLDER='notes'
# For example: vt20171130
for (( i=0; i<=$DAYS; i=i+1 ))
do
    now=$(date -v +${i}d '+%Y%m%d')
    if test -e $FOLDER/vt$now.md; then
        echo $now', Exist'
    else
        echo $now', No Exist'
        # cp notes/note_paradigm.md $FOLDER/vt$now.md
        touch $FOLDER/vt$now.md
    fi
done