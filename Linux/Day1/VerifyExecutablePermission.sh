#!/bin/bash

read -p "Enter filename: " FILE

if [[ -x "$FILE" ]]; then
  echo "Executable file"
else
  echo "File is not executable"
  exit 3
fi
