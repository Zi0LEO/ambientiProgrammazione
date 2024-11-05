#!/usr/bin/env bash

if [[ $# -ne 3 ]]; then
    echo "wrong syntax: $0 dir1 dir2 dir3"
    exit 1
    
fi

if [ ! -d "$1" ] || [ ! -d "$2" ] || [ ! -d "$3" ]; then
    echo "not all the listed directories exist";
    exit 1;
fi

if [ ! -w "$1" ] || [ ! -w "$2" ] || [ ! -w "$3" ]; then
    echo "some directories cannot be written";
    exit 1;
fi

mv $1/*.c $2;

mv $1/*.java $3;

