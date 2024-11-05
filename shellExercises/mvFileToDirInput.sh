#!/usr/bin/env bash

if [ $# -ne 0 ]; then
    echo "wrong syntax: mvFileToDirInput";
    exit 1;
fi

echo "insert file name"; read file;

if [ ! -f $file ]; then
    echo "file does not exist";
    exit 1;
fi

echo "insert directory name"; read directory;

if [ ! -d $directory ]; then
    echo "directory does not exist";
    exit 1;
fi

mv $file $directory;
