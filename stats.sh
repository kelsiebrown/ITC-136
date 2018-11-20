#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
connnections=$( netstat | grep tcp)
users=$( who )

echo -en "


         \e[7mThis is a snapshot of your current system:


          \e[34mDisk Used: \e[94m$diskused
          
          \e[35mFree Memory: \e[95m$memfree
          
          \e[96mLogged In Users: \e[96m$users
          
          \e[32mOpen Internet Connections: \e[92m$connections 
          
          
"


