#!/bin/bash

if [[ -w "$PWD" ]]; then
  echo "Writable directory"
else
  echo "Directory is not writable"
  exit 5
fi
