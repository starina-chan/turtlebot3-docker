#!/bin/bash
set -e

source /opt/ros/humble/setup.bash
# sets GAZEBO_MODEL_PATH so gzserver resolves model:// URIs (ground_plane,
# sun, ...) from packages on disk instead of the EOL online model DB --
# without this, world load hangs on that network call.
source /usr/share/gazebo-11/setup.sh

Xvfb $DISPLAY -screen 0 1280x800x24 &

# fix display race condition
for i in $(seq 1 50); do
    xdpyinfo -display $DISPLAY >/dev/null 2>&1 && break
    sleep 0.1
done

fluxbox &
x11vnc -display $DISPLAY -forever -shared -nopw -quiet &
websockify --web=/usr/share/novnc/ 6080 localhost:5900 &

exec "$@"
