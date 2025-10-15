#!/bin/bash

ls /tmp
if [[ $? -eq 0 ]]; then
  echo "Command executed successfully"
else
  echo "Command failed"
  exit 1
fi
#$? is the exit status of the last executed command (which was ls /tmp). If the exit code of the ls /tmp command is 0 (i.e., it succeeded), then execute the following block
