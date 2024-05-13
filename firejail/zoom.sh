!/bin/bash

# Switch audio
/bin/headset meeting

# Check for camera
lsusb -d 046d:0825
if [ ! "Ã?" -eq 0 ]; then
  wait until ok is pressed
  xmessage "Turn on camera!"
fi

# Start Zoom in the jail
firejail --trace .zoomtrace
    --profile .firejail-zoom-profile
    /usr/bin/zoom
