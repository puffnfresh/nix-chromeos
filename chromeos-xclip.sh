#!/bin/bash

export DISPLAY=:1
CONTENT=$(xclip -o | base64)
echo -e "\x1b]52;c;$CONTENT\x07"
echo -e "\ePtmux;\e\e]52;c;$CONTENT\a\e\\"
