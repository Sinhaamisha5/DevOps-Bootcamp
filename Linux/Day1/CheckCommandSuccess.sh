#!/bin/bash

ls /tmp
if [[ $? -eq 0 ]]; then
  echo "Command executed successfully"
else
  echo "Command failed"
  exit 1
fi
