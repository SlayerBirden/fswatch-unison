#!/usr/bin/env bash

DELIMITER=";"
CURRENT_DIR=$(pwd)"/"

if command -v fswatch &>/dev/null; then
    echo "the watch has started"
    fswatch -e \.git\/ -e ___jb_tmp___$ -e ___jb_old___$ --batch-marker="$DELIMITER" -r $CURRENT_DIR | while read -d"$DELIMITER" files; \
        do
            unison $CURRENT_DIR socket://127.0.0.1:5000/ -auto -batch $(echo $files | sed -e "s#$CURRENT_DIR#-path #g")
        done
else
    echo "fswatch is not available on your system; aborting"
    exit 1
fi