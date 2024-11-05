#!/usr/bin/env bash

if [[ $# ne 2 ]]; then
    echo "wrong syntax: mvFileToDir file directory";
    exit 1;
fi

if [[ -f $1 && -d $2 && -w $2 ]]; then
    mv $1 $2;
else
    echo "files do not exist or insufficient permissions";
    exit 1;
fi
