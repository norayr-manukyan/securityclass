#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Specify file name. Example. bash sum.sh numbers.txt"
  else
    awk '{sum += $1}END{ print sum}' $1
fi
