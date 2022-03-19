pkg update && pkg upgrade -y
pkg install git
pkg install wget
pkg install proot
clear
rm install-ubuntu.sh
wget https://raw.githubusercontent.com/BangKhoupett/TermuxUbuntu/master/Ubuntu20/Installer/ubuntu.sh
sh ubuntu.sh