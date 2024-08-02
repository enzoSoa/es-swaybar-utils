#!/bin/bash
script_path=$(dirname ${BASH_SOURCE[0]})
echo [
echo "{\"full_text\": \"$($script_path/battery_indicator.sh)\", \"color\": \"$($script_path/battery_color.sh)\"},"
echo "{\"full_text\": \"$($script_path/volume.sh)\"},"
echo "{\"full_text\": \"$($script_path/calendar.sh)\"},"
echo "{\"full_text\": \"$($script_path/clock.sh)\",\"separator\": \"false\"},"
echo ],
