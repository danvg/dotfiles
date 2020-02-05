#!/bin/sh

killall -q polybar

while pgrep -u "$(whoami)" -x polybar >/dev/null; do sleep 1; done

polybar bar1 &

echo "Polybar launched ...\n"
