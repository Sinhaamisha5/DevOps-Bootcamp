#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "No Arg Provided: Usage: $0 <argument>"
  exit 1
else
  echo "Argument provided: $1"
fi

#  $#: This is a special variable that holds the Number of command-line arguments passed to the script.If the number of arguments ($#) is less than 1 (meaning zero arguments), then run the following block.
