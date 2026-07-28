#!/bin/bash

app=$(hyprctl activewindow -j | jq -r '.class // empty')

if [ -z "$app" ] || [ "$app" = "null" ]; then
    echo "cooxeo"
else
    echo "$app"
fi
