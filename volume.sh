#!/bin/bash

is_plugged=$(amixer -c0 get Headphone | grep "Front Left" | grep "\[on\]" -o) 

volume_not_trimmed=$(amixer get Master | grep "Front Left" | grep "[0-9]*%" -o) 
volume=${volume_not_trimmed//%}

if [[ "$is_plugged" == "[on]" ]]; then
  icon="";
elif (($volume > "50")); then
  icon="";
elif (($volume > "0")); then
  icon="";
else icon="";
fi

echo "$icon $volume_not_trimmed"
