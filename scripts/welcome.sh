#! /bin/bash
#when copying the code, ignore text above, its used for make the script executable
bold=$(tput bold)
normal=$(tput sgr0)
current_date=$(date)
#above me is variables that will be used in the "echo" command
echo -e "Welcome to terminal ${bold}$USER${normal}!\n Shell youre using right now is located in ${bold}$SHELL${normal}.\n Today is ${bold}$current_date"
#copy all of this (whithout hastag) into first line of .bashrc (without the pause command also).
# this code is optional for you if you want to personalize your terminal when you open it
