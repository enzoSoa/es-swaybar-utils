#!/bin/bash

volume_not_trimmed=$(amixer get Master | grep "Front Left" | grep "[0-9]*%" -o) 
volume=${volume_not_trimmed//%}

if (($volume > "50")); then
  icon="";
elif (($volume > "0")); then
  icon="";
else icon="";
fi

echo "$icon $volume_not_trimmed"
