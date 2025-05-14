#!/bin/bash

## tbd check input

newName=$1
curNum=$(i3-msg -t get_workspaces   | jq '.[] | select(.focused==true).num')
newNameCmd="rename workspace to \"$curNum: $curNum.$newName\""
i3-msg $newNameCmd

