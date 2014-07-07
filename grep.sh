#!/bin/bash

searchString="SecurityManager"

SecurityManagerFiles=(`grep $searchString -r -l . | grep '\.java$'`)
for file in ${SecurityManagerFiles[@]}
do
  echo $file >> Grep_results.txt
  grep $searchString -n $file >> Grep_results.txt
  echo -e "\n\n\n" >> Grep_results.txt
done
