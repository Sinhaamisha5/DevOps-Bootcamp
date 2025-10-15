#!/bin/bash

if [[ "$PWD" == "$HOME" ]]; then
  echo "You are in your login directory"
else
  echo "Not in login directory"
  exit 1
fi
