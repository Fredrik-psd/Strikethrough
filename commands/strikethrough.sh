#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title Strikethrough Selection (Unicode)
# @raycast.mode silent
# @raycast.packageName Text
# @raycast.icon ✍️
# @raycast.needsPermission accessibility

osascript -e 'tell application "System Events" to keystroke "c" using {command down}'
sleep 0.12
pbpaste | python3 -c 'import sys; t=sys.stdin.read(); sys.stdout.write("".join((c+"\u0336") if c not in "\r\n" else c for c in t))' | pbcopy
sleep 0.05
osascript -e 'tell application "System Events" to keystroke "v" using {command down}'

