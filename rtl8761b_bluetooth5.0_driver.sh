#!/bin/zsh

echo "__________.__                 __                 __  .__     "
echo "\______   \  |  __ __   _____/  |_  ____   _____/  |_|  |__  "
echo " |    |  _/  | |  |  \_/ __ \   __\/  _ \ /  _ \   __\  |  \ "
echo " |    |   \  |_|  |  /\  ___/|  | (  <_> |  <_> )  | |   Y  \ "
echo " |______  /____/____/  \___  >__|  \____/ \____/|__| |___|  / "
echo "        \/                 \/                             \/ "
echo " .________ _______   "
echo " |   ____/ \   _  \  "
echo " |____  \  /  /_\  \ "
echo " /       \ \  \_/   \ "
echo "/______  / /\_____  / "
echo "       \/  \/     \/ "

echo "To use this script execute with superuser(root) permissions"
echo "If you don't have using this mode press CTRL+C to cancel"
echo "use this form: sudo ./rtl8761b_bluetooth5.0_driver.sh"

sleep 10



git clone https://github.com/linuxonly1993/rtl8761b_bt_5_linux.git

cd rtl8761b_bt_5_linux

cd firmware


mkdir -pv /usr/lib/firmware/rtl_bt/rtl8761b_config.bin
mkdir -pv /usr/lib/firmware/rtl_bt/rtl8761b_fw.bin

sudo cp rtl8761b_config.bin /usr/lib/firmware/rtl_bt/rtl8761b_config.bin
sudo cp rtl8761b_fw.bin /usr/lib/firmware/rtl_bt/rtl8761b_fw.bin

systemctl enable bluetooth
systemctl start bluetooth


echo "reboot your system to apply the changes on your system."
