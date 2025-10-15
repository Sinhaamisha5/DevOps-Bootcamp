#!/bin/bash

if [[ -z "$(ls -A)" ]]; then
  echo "Directory is empty"
  exit 4
else
  echo "Directory is not empty"
fi
