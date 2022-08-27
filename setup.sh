sudo echo "INSTALLING PICAM-HDMI BY POOZWALLY"
sudo apt update
sudo apt upgrade -y
sudo chmod +x /home/pi/picam-hdmi/setup.sh
sudo cp -r ~/picam-hdmi/camera.start.service /etc/systemd/system/camera.start.service
sudo chmod 644 /etc/systemd/system/camera.start.service
sudo systemctl enable camera.start.service
sudo systemctl start camera.start.service
sync
sudo echo "INSTALL COMPLETE, REBOOTING"
sudo reboot now
