n#!/bin/bash
#version 1.0

clear
# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;31m'

cowsay -f eyes "Type -0" | lolcat
figlet -f slant "Type -0" | lolcat
echo "    <=====================[]====================>" | lolcat
echo "    <=====[       Tools By Type -0       ]=====>" | lolcat
echo  "    <=====[  Concact Me : +067531  ]=====>" | lolcat
echo "    <=====================[]====================>" | lolcat

sleep 1

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
clear
sleep 1
exit
}


lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo $b "1. TOOLS BRUTEFORCE AND SCAN AND DDOS${enda}";

echo $b "99. Exit${enda}";
read -p " Pilih Nomornya =>" pil;

case $pil in
1)sh Tools BruteForce.sh
echo

;;


99) echo "Autor : Type -0" | lolcat
figlet -f slant "Type -0" | lolcat
exit
;;

esac
done
done
