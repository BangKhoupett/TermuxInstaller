apt update && apt upgrade -y
apt install git
apt install wget
apt install proot
clear

apt install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++

git clone https://github.com/tpruvot/cpuminer-multi
mv cpuminer-multi cpuminer
cd cpuminer
./build-linux-arm.sh

read -p "Algo : " algo
read -p "Server : " server
read -p "Coin : " coin
read -p "Wallet : " wallet
read -p "Thread : " thread

echo "./cpuminer -a $algo -o $server -u $wallet -p c=$coin -t $thread" > start-minning.sh
chmod +x start-minning.sh
./start-minning