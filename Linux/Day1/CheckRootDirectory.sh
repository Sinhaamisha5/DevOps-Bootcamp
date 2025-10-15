#!/bin/bash

if [[ "$PWD" == "/" ]]; then
  echo "You are in root directory"
else
  echo "Not in root directory"
  exit 1
fi
