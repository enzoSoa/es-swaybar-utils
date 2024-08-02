#!/bin/bash

battery=$(upower -i $(upower -e | grep BAT0))
percentage_not_trimmed=$(grep percentage <<< $battery | grep "[0-9]*%" -o)
percentage=${percentage_not_trimmed//%}

if (($percentage > "80")); then
  echo "#94e2d5";
elif (($percentage > "64")); then
  echo "#a6e3a1";
elif (($percentage > "48")); then
  echo "#f9e2af";
elif (($percentage > "32")); then
  echo "#fab387";
elif (($percentage > "16")); then
  echo "#eba0ac";
else echo "#f38ba8";
fi
