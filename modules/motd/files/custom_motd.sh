#!/bin/bash
# Script by Itai Ganot 2014 .
USER=$(whoami)
if [ "$USER" = "root" ]; then
IP=$(hostname -i)
MEMTOTAL=$(free -m | sed -n 2p | awk '{print $2}')
MEMUSED=$(free -m | sed -n 2p | awk '{print $3}')
MEMFREE=$(free -m | sed -n 2p | awk '{print $4}')
UPTIMEDAYS=$(uptime | awk '{print $3}')
UPTIMEHOURS=$(uptime | awk -F: '{print $3}' | awk -F, '{print $2}')
UPTIMEMINS=$(uptime | awk -F: '{print $4}' | awk -F, '{print $1}')
SSHCONNUM=$(ps -A x |grep sshd |grep -v grep | wc -l)
RUNPRCS=$(ps -Al | wc -l)
echo " "
echo " ____  _                    _           _____ ___  "
echo "/ ___|(_)_____ __ ___   ___| | __  _ __|___ // _ \  "
echo "\___ \| |_  / '_ \` _ \ / _ \ |/ / | '_ \ |_ \ (_) | "
echo " ___) | |/ /| | | | | |  __/   <  | |_) |__) \__, | "
echo "|____/|_/___|_| |_| |_|\___|_|\_\ | .__/____/  /_/  "
echo "                                  |_|               "
echo " "
echo -e "\e[35m Last Login.....:	$(last root |head -n 1 |awk '{print $1" "$3" "$4" "$5" "$6" "$7}') \e[0m"
echo -e "\e[35m Server IP......:	$IP \e[0m"
echo -e "\e[35m Uptime.........:	$UPTIMEDAYS days$UPTIMEHOURS hours $UPTIMEMINS minutes  \e[0m"
echo -e "\e[35m Load...........:	$(uptime | awk -F: '{print $5}') \e[0m"
echo -e "\e[35m Memory MB......:	Total: $MEMTOTAL Used: $MEMUSED Free: $MEMFREE \e[0m"
echo -e "\e[35m SSH Connections:	There are currently $SSHCONNUM users connected \e[0m"
echo -e "\e[35m Procceses......:	There are currently $RUNPRCS processes running \e[0m"
if [ "$(cat $LBMEMFILE)" = "0" ]; then
echo -e "\e[35m Membeship in LB:	Yes"
elif [ "$(cat $LBMEMFILE)" = "2" ]; then
echo -e "\e[35m Membeship in LB:  	No $LISTMEMFILE"
fi
echo " "
echo -e "\e[32m * * * * * * * * * * * W A R N I N G * * * * * * * * * * * * *  \e[0m"
echo -e "\e[32m   \e[0m"
echo -e "\e[32m THIS SYSTEM IS RESTRICTED TO AUTHORIZED USERS FOR AUTHORIZED   \e[0m"
echo -e "\e[32m USE ONLY.  \e[0m"
echo -e "\e[32m   \e[0m"
echo -e "\e[32m * * * * * * * * * * * W A R N I N G * * * * * * * * * * * * *  \e[0m"
echo " "
echo "This server is managed by Puppet! Hooray!"
fi
