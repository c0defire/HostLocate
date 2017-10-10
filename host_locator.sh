#! /bin/bash

############################################################
# Author: C0defire
# Version 1.0
# This script will find all live hosts in a Class C range.
############################################################

###### Constants ######
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
#######################

clear
cat << "EOF"

[***]                Host Locator               [***]
[***]           Created by: C0defire            [***]
                    Version: 1.0.0
[***]       Github: Github.com/javierfaustino   [***]


        `-:::-.`                   
     -ohysooooshy+.                
   -hy/-:::::::-:+hs.              
  /do:::///////::-:yd.             
 -dy+://++++++++:::ohh             
 +dso+/+/+o+o+/+/:+oyd.            
 /dsss+oooo+-/+ooossyd`            
 `hhssoosoo+: -+osssdo             
  .hhsssooo++  `:oydo              
    /yhysssos-.:shh+`.`            
      ./oyyhhyso:` -o+ys-          
                    .ymdhs:        
                      .smdhy:      
                        .smdhy:    
                          .smdhy.  
                            .sho/+ 
                              `/- 
EOF
class=$(ip address | grep "inet" | head -3 | tail -1 | awk {'print $2'} | cut -f1-3 -d.)
#read class
echo
echo -e "\033[1mTargets Found:\033[0m"
echo
for x in `seq 1 254`;
do
	tput setaf 2
    tput setaf 2; ping -c 1 $class.$x | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 &
    tput setaf 2
done

tput sgr0
   
sleep 4
echo
