#!/bin/bash

diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
connnections=$( netstat | grep tcp)
users=$( who )

echo "This is a snapshot of your current system:


          Disk Used: $diskused
          
          Free Memory: $memfree
          
          Logged In Users: $users
          
          Open Internet Connections: $connections 
          
"


