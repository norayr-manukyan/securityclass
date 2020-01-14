#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Example of usage. bash count.sh bash"
  else
    echo "" > shells.txt
    awk -F: '{print $7}' /etc/passwd >> shells.txt
    grep -c $1 shells.txt
fi
