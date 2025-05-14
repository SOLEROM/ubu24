#!/bin/bash
## xrandr --listmonitors
lpt="eDP-1"
wide="DP-3-1"
top="HDMI-1"
curName=$(i3-msg -t get_workspaces   | jq '.[] | select(.focused==true).name')
curDir="$(cd "$(dirname "$0")" && pwd)"

$curDir/scrLay0.sh lpt

i3-msg workspace number 5, move workspace to output $top
i3-msg workspace number 6, move workspace to output $wide

i3-msg workspace $curName
