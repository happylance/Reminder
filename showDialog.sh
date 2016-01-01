#!/bin/bash

osascript << EOF &>/dev/null
tell application "Finder"
  activate
  display dialog "$1"
end tell
EOF
