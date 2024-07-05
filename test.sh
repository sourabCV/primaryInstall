sudo apt update && sudo apt upgrade -y
ANYDESK_URL="https://download.anydesk.com/rpi/anydesk_6.2.1-1_armhf.deb"
wget $ANYDESK_URL -O anydesk_latest_armhf.deb
sudo dpkg -i anydesk_latest_armhf.deb
sudo apt --fix-broken install -y
rm anydesk_latest_armhf.deb

echo "AnyDesk installation complete."
