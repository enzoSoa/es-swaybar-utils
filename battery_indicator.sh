#!/bin/bash

line_power=$(upower -i $(upower -e | grep line_power_AC0))
is_plugged=$(grep online <<< $line_power | grep "yes" -o)

battery=$(upower -i $(upower -e | grep BAT0))
percentage_not_trimmed=$(grep percentage <<< $battery | grep "[0-9]*%" -o)
percentage=${percentage_not_trimmed//%}

if [[ "$is_plugged" == "yes" ]]; then
  if (($percentage > "90")); then
    icon="󰂅";
  elif (($percentage > "80")); then
    icon="󰂋";
  elif (($percentage > "70")); then
    icon="󰂊";
  elif (($percentage > "60")); then
    icon="󰢞";
  elif (($percentage > "50")); then
    icon="󰂉";
  elif (($percentage > "40")); then
    icon="󰢝";
  elif (($percentage > "30")); then
    icon="󰂈";
  elif (($percentage > "20")); then
    icon="󰂇";
  elif (($percentage > "10")); then
    icon="󰂆";
  else icon="󰢜";
  fi;

else
  if (($percentage > "90")); then
    icon="󰁹";
  elif (($percentage > "80")); then
    icon="󰂁";
  elif (($percentage > "70")); then
    icon="󰂀";
  elif (($percentage > "60")); then
    icon="󰁿";
  elif (($percentage > "50")); then
    icon="󰁾";
  elif (($percentage > "40")); then
    icon="󰁽";
  elif (($percentage > "30")); then
    icon="󰁼";
  elif (($percentage > "20")); then
    icon="󰁻";
  elif (($percentage > "10")); then
    icon="󰁺";
  else icon="󱃍";
  fi;
fi

echo $icon $percentage%
