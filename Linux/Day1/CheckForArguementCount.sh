#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "No Arg Provided: Usage: $0 <argument>"
  exit 1
else
  echo "Argument provided: $1"
fi
