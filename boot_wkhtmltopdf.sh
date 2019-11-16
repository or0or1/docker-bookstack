#!/usr/bin/env bash

Xvfb :0 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &
DISPLAY=:0.0 /usr/bin/wkhtmltopdf $@
killall Xvfb
