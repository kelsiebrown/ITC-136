#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
connnections=$( netstat | grep tcp)
users=$( who )

echo -en "This is a snapshot of your current system:


          \e[34mDisk Used: $diskused
          
          \e[35mFree Memory: $memfree
          
          \e[96mLogged In Users: $users
          
          \e[32mOpen Internet Connections: $connections 
          
"


