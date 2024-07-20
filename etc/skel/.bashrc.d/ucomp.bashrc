# USB Companion
alias uMALP='picocom -b 115200 -r -l /dev/ttyACM0'
alias sMALP='picocom -b 115200 -r -l /dev/ttyUSB0'
alias usbtrmux='adb forward tcp:8022 tcp:8022 && adb forward tcp:8080 tcp:8080 && ssh uR3-S6.lo'