#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "Run as root only"
  exit 1
else
  echo "You are root"
fi
