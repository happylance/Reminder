#!/bin/bash

message="$1"
[ -z "$1" ] && message="It is $(date +%H:%M) now."

osascript << EOF &>/dev/null
tell application "Finder"
  activate
  display dialog "$message"
end tell
EOF
