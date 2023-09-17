#!/bin/bash

cat << EOF 
Install Start ...

Please Wait a Few ...

EOF
slpee 2 
clear
echo "if you from iran , type iran ya age zendegi nimikonid dar iran type kondi no "
sleep 2
read -p " where are you ???"  where

case $where in 
  [iran] )  echo "OK need nameserver .... Please ...";
        echo -e "nameserverr 10.202.10.202\nnameserver 10.202.10.102" > /etc/resolv.conf
        echo "mirim baraye nasb docker ... "
        sleep 2 

          clear 

        
          break;;
  [no] ) echo "exiting ....";
      exit;;
    * ) echo "invalid command ....";;
esac 
done 


