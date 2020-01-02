#!/bin/bash

bluetoothctl connect $1 | grep -v 'Attempting' | xargs -I % bash -c "dunstify 'Bluetooth' '%'"
