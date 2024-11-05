#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "wrong syntax: $0 fileName wordToCount";
    exit 1; 
fi
  
lines=$(more $1);
counter=0;

for i in $lines ; do
    if [ $i = $2 ]; then
        let counter=$counter+1;
    fi
done

echo "found $counter occurrences of $2"
