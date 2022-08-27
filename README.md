# picam-hdmi
A simple hdmi camera using a Raspberry Pi

Welcome to my first public repo.  I made this to be able to feed hdmi video to a Herelink control system used on drones and other types of uncrewed vehicles (rovers, boats, submarines).  The Herelink system requires hdmi cameras which can be bought commercially, but I was not happy with any of the options I could buy for my projects.  I adapted this from: https://webtechie.be/post/2021-12-20-raspberry-pi-as-hdmi-camera-for-atem-mini/, so thanks to the author.

Notes: 
1) Uses Raspberry Pi OS (Buster) Lite because I've had trouble getting Bullseye to work even with legacy cameras enabled (this might be because I am using a Pi Zero).
2) It's important to use the Lite (no desktop) version of OS to avoid conflicts with hdmi output
3) Working SBCs:
    - Raspberry Pi Zero W
4) Working cameras:
    - Rasberry Pi Camera V2.1
    - Titri Hobby Raspberry Pi IR-Cut Camera (from Amazon: https://www.amazon.ca/gp/product/B083Y4QP84/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
5) Failing cameras (help if you can!)
    - Rasberry Pi Camera V1

Setup:
1) Start with a fresh or recent install of Raspberry Pi OS (Buster) Lite.
2) Connect pi to output device of your choice (tv, monitor, video transmitter, etc).
3) Connect and login to pi via ssh.
4) Enable csi camera via raspi-config.
5) Enter the following commands:
    sudo apt update
    sudo apt upgrade -y
    sudo apt install git -y
    sudo git config --global user.email "you@example.com"
    sudo git config --global user.name "Your Name"
    sudo git clone https://github.com/poozwally/picam-hdmi.git
    ./home/pi/picam-hdmi/setup.sh
6) After following the above the pi will dicsonnect from ssh and reboot.
7) If you see a display from the camera on the connected output device, then it worked.
8) If not, debug...
