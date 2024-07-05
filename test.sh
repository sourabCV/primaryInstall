sudo apt update && sudo apt upgrade -y
ANYDESK_URL="https://download.anydesk.com/rpi/anydesk_6.3.0-1_armhf.deb"
wget $ANYDESK_URL -O anydesk_latest_armhf.deb
if [ $? -ne 0 ]; then
  echo "Error downloading AnyDesk. Please check the URL and try again."
  exit 1
fi
sudo dpkg -i anydesk_latest_armhf.deb
sudo apt --fix-broken install -y
rm anydesk_latest_armhf.deb

echo "AnyDesk installation complete."
