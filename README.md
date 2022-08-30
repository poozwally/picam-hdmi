# picam-hdmi
A simple hdmi camera using a Raspberry Pi

Welcome to my first public repo.  It's part of a few projects I'm working on, so I split out the commands into a seperate repo I can just include any time I need rather than repeating code in multiple locations.  It's original purpose was to feed video to a Herelink control system used on drones and other types of uncrewed vehicles (rovers, boats), but it can be used by any project that needs an hdmi camera source.  The Herelink system requires an hdmi camera which can be bought commercially, but I was not happy with any of the options I could buy for my projects.  I adapted this from: https://webtechie.be/post/2021-12-20-raspberry-pi-as-hdmi-camera-for-atem-mini/, so thanks to the author.

Notes: 
1) Uses Raspberry Pi OS (Buster) Lite because I've had trouble getting Bullseye to work even with legacy cameras enabled (this might be because I am using a Pi Zero).
2) It's important to use the Lite (no desktop) version of OS to avoid conflicts with hdmi output.
3) Working SBCs:
    - Raspberry Pi Zero W
4) Working cameras:
    - Rasberry Pi Camera V2.1
    - Waveshare RPi IR-CUT Camera (https://www.waveshare.com/wiki/RPi_IR-CUT_Camera)
    - Smraza SM41-CNF (https://www.smraza.com/products/smraza-camera-module-for-raspberry-pi-4-with-5mp-1080p-ov5647-video-webcam-supports-night-vision-compatible-with-raspberry-pi-3-b-3b-2-model-b-b-sm41)
5) Failing cameras (help if you can!)
    - Rasberry Pi Camera V1, this surprises me so I'll probably try again soon

Setup:
1) Start with a fresh or recent install of Raspberry Pi OS (Buster) Lite.
2) Connect pi to output device of your choice (tv, monitor, video transmitter, etc).
3) Connect and login to pi via ssh.
4) Enable csi camera via raspi-config.
5) Enter the following commands:
    - sudo apt update
    - sudo apt upgrade -y
    - sudo apt install git -y
    - sudo git config --global user.email "you@example.com"
    - sudo git config --global user.name "Your Name"
    - sudo git clone https://github.com/poozwally/picam-hdmi.git
    - ./home/pi/picam-hdmi/setup.sh
6) After following the above the pi will dicsonnect from ssh and reboot.
7) If you see a display from the camera on the connected output device, then it worked.
8) If not, debug...
