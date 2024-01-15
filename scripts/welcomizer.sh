#! /bin/bash
#Normal One
#when copying the code, ignore text above, its used for make the script executable
bold=$(tput bold)
normal=$(tput sgr0)
current_date=$(date)
#above me is variables that will be used in the "echo" command
echo -e "Welcome to terminal ${bold}$USER${normal}!\n Shell youre using right now is located in ${bold}$SHELL${normal}.\n Today is ${bold}$current_date"

#Note, this only works in the .bashrc. Put it in .bashrc
#Welcomized One
#The welcomizer 2.0
bold=$(tput bold)
normal=$(tput sgr0)
current_hour=$(date +%H)
time_of_day="null"

# determine if its morning, day, or night.
if ((current_hour >= 6 && current_hour < 12)); then
  time_of_day="morning"
 elif ((current_hour >= 12 && current_hour < 18)); then
  time_of_day="afternoon"
 else
  time_of_day="night"
fi

echo "Terminal Welcomizer 2.0"
echo "Good $time_of_day, {$bold}$USER{$normal}"
echo -e "What do you want to do today?\n [1] ${bold}Check the date\n${normal} [2] ${bold}Change working directory\n${normal} [3] ${bold}Exit & continue to the terminal\n${normal}"
echo "Choose from 1, 2, or 3..." 
read -r answer_123

if [ "$answer_123" = '1' ]; then
  echo -e "Today is $(date)"
 
 elif [ "$answer_123" = '2' ]; then
  echo "Enter the directory you want to enter on [enter from the /]:"
  read -r answer_dir
  cd "$answer_dir"
  echo "You have been moved to $(pwd). Resuming..."
 elif [ "$answer_123" = '3' ]; then
  echo "Resuming the session..."

 else
 echo "You're inputted the wrong number or something has error with code 1, resuming the session..."
 exit 1
fi
