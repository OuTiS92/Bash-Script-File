#!/bin/bash

cat << EOF 
Install Start ...

Please Wait a Few ...

EOF
slpee 2 
clear
echo "if you from iran , type iran ya age zendegi nimikonid dar iran type kondi no "
sleep 2
        echo -e "nameserverr 10.202.10.202\nnameserver 10.202.10.102" > /etc/resolv.conf
        sleep 2 
	sudo apt update
	wait 
	sudo apt remove docker*
	wait
	clear
	sleep 1
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	wait 
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	wait
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	wait
	apt-cache policy docker-ce
	wait
	sudo apt install docker-ce
	wait
	service_name="docker"
	if systemctl is-active --quiet "$service_name"; then 
		echo "$service_name  runnig ... "
	else 
		systemctl start "$service_name"
	fi
	sudo usermod -aG docker ${USER}
	su - ${USER}
	sleep 1 
	clear 
	echo "Docker Install .... GG"


