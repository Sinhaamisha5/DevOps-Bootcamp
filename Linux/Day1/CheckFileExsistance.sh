#!/bin/bash

FILE="notes.txt"

if [[ -f "$FILE" ]]; then
  echo "File found at: $(realpath "$FILE")"
else
  echo "File not found"
  exit 2
fi
