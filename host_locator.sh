#! /bin/bash

############################################################
# Author: C0defire
# Version 1.0
# This script will find all live hosts in a Class C range.
############################################################

clear
# Put bad-ass banner here
cat << "EOF"
.__                    __     .__                        __                
|  |__   ____  _______/  |_   |  |   ____   ____ _____ _/  |_  ___________ 
|  |  \ /  _ \/  ___/\   __\  |  |  /  _ \_/ ___\\__  \\   __\/  _ \_  __ \
|   Y  (  <_> )___ \  |  |    |  |_(  <_> )  \___ / __ \|  | (  <_> )  | \/
|___|  /\____/____  > |__|____|____/\____/ \___  >____  /__|  \____/|__|   
     \/           \/    /_____/                \/     \/                   
     
EOF
class=$(ip address | grep "inet" | head -3 | tail -1 | awk {'print $2'} | cut -f1-3 -d.)

echo
#read class
echo
echo "########################################"
echo
echo -e "\033[1mTargets Found:\033[0m"
echo
for x in `seq 1 254`;
do
    ping -c 1 $class.$x | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 &
done
   
sleep 4
echo
echo  "########################################"
echo
