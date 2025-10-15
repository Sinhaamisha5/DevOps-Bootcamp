#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "Run as root only"
  exit 1
else
  echo "You are root"
fi
#$EUID: This special variable (Effective User ID) holds the numeric ID of the current user. Root's EUID is always 0.
