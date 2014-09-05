#!/bin/bash

searchString="SecurityManager"
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
SecurityManagerFiles=(`grep $searchString -r -l . | grep '\.java$'`)
for file in "${SecurityManagerFiles[@]}"
do
  echo "$file" >> grep.txt
  grep $searchString -n "$file" >> grep.txt
  echo -e "\n\n\n" >> grep.txt
done
IFS=$SAVEIFS
