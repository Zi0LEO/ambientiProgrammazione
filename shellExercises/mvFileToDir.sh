#!/usr/bin/env bash

if [ -f $1 -a -d $2 -a -w $2 ]; then
    mv $1 $2;
fi
