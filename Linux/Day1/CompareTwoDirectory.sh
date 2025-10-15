#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <dir1> <dir2>"
  exit 1
fi

if [[ "$(realpath "$1")" == "$(realpath "$2")" ]]; then
  echo "Both directories are identical"
else
  echo "Directories are different"
  exit 1
fi
