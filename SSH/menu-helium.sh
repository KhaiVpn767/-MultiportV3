#!/bin/bash
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/KhaiVpn767/MultiportV3/main/LICENSE/access"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      ${GREEN}Telegram${NC} https://t.me/khaivpn"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit 0
  fi
}
checking_sc
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "                 MENU helium              $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "  ${ORANGE}1.${NC} \033[0;36m INSTALL/HELIUM${NC}"
echo -e "  ${ORANGE}2.${NC} \033[0;36m helium${NC}"
echo -e "  ${ORANGE}0.${NC} \033[0;36m menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 5 ] : " menu
case $menu in
1)  clear ;
    rm -rf /usr/local/sbin/helium && wget -q -O /usr/local/sbin/helium https://raw.githubusercontent.com/abidarwish/helium/main/helium.sh && chmod +x /usr/local/sbin/helium && helium
    ;;
2) clear ;
    helium
    ;;
0)
    menu
    ;;
esac