#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "wrong syntax: createAndAppend fileName number";
    exit 1;
fi

if [ -f $1 ]; then
    echo "file $1 already exists";
    exit 1;
fi

if [[ ! $2 =~ ^[0-9]+$ ]]; then
    echo "second parameter needs to be a number";
    exit 1;
fi

touch $1;
for ((i = 0; i < $2; i++)); do
    echo "test" >> $1;
done
