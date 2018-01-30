#!/bin/bash

WD=`pwd`
INSTALLDIR=/usr/local/noobhub

echo '=> Installing NoobHub...'

sleep 2

apt-get update

npm install forever -g

mkdir $INSTALLDIR

cd $INSTALLDIR

git clone https://github.com/Overtorment/NoobHub.git

ufw allow 1337/tcp

cp $WD/bin/noobhub /usr/local/bin/noobhub

chmod /usr/local/bin a+x noobhub

noobhub start

clear

echo ''
echo '*******************************************************************'
echo '=>NoobHub is now running on port 1337!'
echo '=>Installed in /usr/local/noobhub'
echo ''
echo 'Type: `noobhub help` for CLI options'
echo ''
echo '=>Installer brought to you by develephant.com'
echo '*******************************************************************'
echo ''

exit 0