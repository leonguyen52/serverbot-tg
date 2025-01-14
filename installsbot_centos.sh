#!/bin/bash

sudo yum update
sudo yum -y install traceroute
sudo yum -y install python3-pip
sudo yum -y install wget
sudo yum -y install python3-devel
pip3 install --upgrade psutil --user
pip3 install --upgrade pyTelegramBotAPI --user
pip3 install --upgrade python-dotenv --user
pip3 install --upgrade matplotlib --user
pip3 install --upgrade numpy --user
pip3 install --upgrade pandas --user

echo "Prepare configs"
#sed -i "s/<user>/"$USER"/g" serverbot.service.centos config.py
echo "alias botstop='sudo systemctl stop serverbot'" >> ~/.bashrc
echo "alias botstart='sudo systemctl start serverbot'" >> ~/.bashrc
echo "alias botstatus='sudo systemctl status serverbot'" >> ~/.bashrc
echo "alias botstop='sudo systemctl stop serverbot'" >> ~/.zshrc
echo "alias botstart='sudo systemctl start serverbot'" >> ~/.zshrc
echo "alias botstatus='sudo systemctl status serverbot'" >> ~/.zshrc


echo "Copy files"
sudo cp -pv ./serverbot.service.centos /etc/systemd/system/serverbot.service
chmod -v +x ./bot.py
echo "Done"
echo "Download speedtest-cli"
wget -O ./speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x ./speedtest-cli
sudo systemctl daemon-reload
echo "Start service and check status"
echo "service serverbot start"
sudo systemctl stop serverbot.service
sleep 1
sudo systemctl start serverbot.service
sleep 2
sudo systemctl enable serverbot.service
echo "service serverbot status"
systemctl status serverbot.service
