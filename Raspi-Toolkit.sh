echo "
   ___                    _      ______            __ __    _  __ 
  / _ \ ___ _ ___  ___   (_)____/_  __/___  ___   / // /__ (_)/ /_
 / , _// _ `/(_-< / _ \ / //___/ / /  / _ \/ _ \ / //  '_// // __/
/_/|_| \_,_//___// .__//_/      /_/   \___/\___//_//_/\_\/_/ \__/ 
                /_/"

sleep 1

echo "      "


echo " Script Started " 

sudo apt update && apt upgrade -y

sleep 0.5

sudo apt autoremove -y

sleep 0.5

sudo apt install -y raspberrypi-kernel-headers build-essential bc dkms git

sleep 1

git clone https://github.com/morrownr/88x2bu-20210702.git

sleep 0.5

cd 88x2bu-20210702

sleep 0.5

sudo ./install-driver.sh

sleep 0.5

sudo apt install build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev ethtool shtool rfkill zlib1g-dev libpcap-dev libsqlite3-dev libpcre2-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils expect -y

sleep 0.5

sudo apt install aircrack-ng -y 

sleep 0.5

git clone https://github.com/derv82/wifite2.git

sleep 0.5

cd wifite2

sleep 0.5

sudo python3 setup.py install -y

sleep 0.5

sudo apt install hcxtools -y

sleep 0.5

echo "Script Finished"