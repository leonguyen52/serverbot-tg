# ServerBot Readme
This is telegram bot for server monitoring. 
This bot can send messages to your telegram id
Tested on ubuntu 18.04 & python 3.6.9

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

### Near validator node alerts
 1. Alert if node is down
 2. Alert if node is out of sync

### Installation
 1. Create telegram bot and get Api Token
 2. Send to your new bot command /start
 3. Clone bot to server
```sh
cd $HOME && git clone -v https://github.com/ama31337/serverbot.git && cd ./serverbot && chmod +x ./installsbot.sh
```
 4. Open ./config.py and insert your bot API and your telegram id.
 5. Run installation script
```sh
./installsbot.sh
```

### Start, stop or check bot status
If you make any changes in config you need to restart your bot. To start, stop or check status you can use commands in bash:
```sh
source /home/$USER/.bash_aliases
botstart
botstop
botstatus
```

### What to do if something not working?
If you get History load error, remove bot files from /tmp
```sh
sudo rm -rf /tmp/*.log
sudo rm -rf /tmp/*.png
```
Find in bot.py telebot.logger.setLevel(logging.ERROR) and change ERROR to DEBUG, restart serverbot service and execute
```sh
$ journalctl -e -u serverbot > ~/serverbot/servicelog.log
```
