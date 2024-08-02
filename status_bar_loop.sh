#!/bin/bash

script_path=$(dirname ${BASH_SOURCE[0]})

echo '{"version":1}'

echo [
while :; do
  $script_path/render_status_bar.sh
  sleep 0.5
done
