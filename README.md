# ServerBot Readme
This is telegram bot for server monitoring. 
This bot can send messages to your telegram id
Tested on CentOS 7 & python 3.9

# What this bot can do?

###  Monitoring

 1. CPU load 
 2. RAM load
 3. Network

### Historical data
 1. CPU Utilization
 2. RAM Load
 3. Disk I/O
 4. Network perfomance 
 5. Ping test 

### Alert
 1. High CPU Utilization
 2. High RAM load
 3. Network degradation

### Server
 1. Check CPU load
 2. Check RAM load
 3. Check disk usage
 4. Check disk i/o
 5. Check server ping
 6. Alalyze server traceroute
 7. Get top processes
 8. Check uptime
 9. Check network load
 10. Make a speedtest

### Installation
 1. Create telegram bot and get Api Token with @BotFather.
 2. Send to your new bot command /start
 3. Clone bot to server
```sh
cd $HOME && git clone -v https://github.com/leonguyen52/serverbot-tg.git && cd ./serverbot && chmod +x ./installsbot.sh
```
 4. Open ./config.py and insert your bot API and your telegram id.
 5. Run script ./installsbot.sh for Ubuntu/Debian and ./installsbot_centos.sh for CentOS, source your bash or zsh to make bot start/stop commands working
```sh
./installsbot_centos.sh
```
```sh
source ~/.bashrc
source ~/.zshrc
```


### Update
 1. Backup your old config and pull changes from git
```sh
cd $HOME/serverbot && mv config.py config.py.bak && git pull
```
 2. Compare the configs and adjust if necessary
 3. Restart bot
```sh
botstop
botstart
```

### Start, stop or check bot status
If you make any changes in config you need to restart your bot. To start, stop or check status you can use commands in bash:
```sh
botstart
botstop
botstatus
```

### What to do if something not working?
If you get History load error, remove bot files from /tmp and from serverbot db dirs
```sh
sudo rm -rf /tmp/*.log
sudo rm -rf /tmp/*.png
sudo rm ${HOME}/serverbot/db/*
```
Find in bot.py telebot.logger.setLevel(logging.ERROR) and change ERROR to DEBUG, restart serverbot service and execute
```sh
$ sudo journalctl -e -u serverbot > ~/serverbot/servicelog.log
```
If near tools not working, make sure what you've near is /usr/bin, if not:
```
which near
near_path=$(which near)
sudo ln -s ${near_path} /usr/bin/near
```

<img src="https://github.com/ama31337/neartips/blob/master/manuals/near_node_alert.png">

<img src="https://github.com/ama31337/neartips/blob/master/manuals/serverbot.gif">

If bot was helpful to you, stake with us --> [@lux.poolv1.near](https://lux8.net/near)
