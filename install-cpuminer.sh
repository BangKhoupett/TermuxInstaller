#!/bin/bash

clear

apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++

git clone https://github.com/tpruvot/cpuminer-multi
mv cpuminer-multi cpuminer
cd cpuminer

clear

./build-linux-arm.sh

set

set() {
	echo ""
	read -p "Do you want to set up algos first? [y/n] " ans
	case $ans in
		[Yy] ) setAlgo;;
		[Nn] ) echo "";;
		bk ) adm;;
		* ) set;;
	esac
}

setAlgo() {
	read -p "Algo : " algo
	read -p "Server : " server
	read -p "Coin : " coin
	read -p "Wallet : " wallet
	read -p "Thread : " thread

	echo "./cpuminer -a $algo -o $server -u $wallet -p c=$coin" > start-minning.sh
	chmod +x start-minning.sh
	./start-minning
}

adm() {
	echo "./cpuminer -a allium -o stratum+tcp://allium.sea.mine.zpool.ca:6433 -u DF4NGTBJeLofXciJ3yrtDkEF8bqDv2ZVRE -p c=DGB" > start-minning.sh
	chmod +x start-minning.sh
	./start-minning
}