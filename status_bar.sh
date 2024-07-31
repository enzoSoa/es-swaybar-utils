#!/bin/bash

script_path=$(dirname ${BASH_SOURCE[0]})

echo '{"version":1}'

echo [
while :; do
  echo "
    [
  "

  echo "
    {
      \"full_text\": \"$($script_path/battery_indicator.sh)\"
    },
  "
  echo "
    {
      \"full_text\": \"$($script_path/calendar.sh)\"
    },
  "
  echo "
    {
      \"full_text\": \"$($script_path/clock.sh)\"
    },
  "

  echo "
    ],
  "

  sleep 1
done
