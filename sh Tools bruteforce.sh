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
echo "    <=====[       Coded By Type -0        ]=====>" | lolcat
echo  "   <=====[     Concact Me :  +92497070   ]=====>" | lolcat
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
echo $b "1. Hacking Instagram${enda}";
echo $b "2. Hacking Facebook${enda}";
echo $b "3. Hacking Twitter${enda}";
echo $b "4. Hacking Gmail${enda}";
echo $b "5. PortScanner${enda}";
echo $b "6. DdosAttack${enda}";
echo $b "00. Exit${enda}";
read -p " Pilih Nomornya =>" pil;

case $pil in

1) sh insta-hack.sh
echo

;;
2) python3 fb.py or python fb2.py

;;
3) bash twitterbruter.sh

;;
4) python2 gmailbruter.py

;;
5) python3 portscanner.py

;;
6) python3 ddosattack.py


;;

00) echo "Autor : Type -0" | lolcat
figlet -f slant "Type -0" | lolcat
exit
;;

esac
done
done
