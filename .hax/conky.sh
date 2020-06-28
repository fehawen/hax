#!/bin/sh

# Terminate already running conky instances
killall -q conky

# Wait until the processes have been shut down
while pgrep -x conky >/dev/null; do sleep 1; done

# Launch conky
conky -c ~/.config/conky/conky_left.lua -d
conky -c ~/.config/conky/conky_right.lua -d
