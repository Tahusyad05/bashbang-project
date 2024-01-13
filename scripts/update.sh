#!/bin/sh
# this script will execute update and upgrade to your system simultaneously (also with flatpak if you have it, uncomment or remove flatpak if needed)

# Display welcome message and confirmation prompt
echo "Welcome to System Updater (Flatpak Included)"
read -r -p "Are you sure you want to continue? (y/n): " answer

if [ "$answer" = "y" ]; then
  # Update the system
  sudo apt update && sudo apt full-upgrade -y
  sudo apt autoclean
  sudo apt autoremove -y
  flatpak update

  # Display message if the update is successful
  read -r -p "Done upgrading, press enter to close..." dummy
elif [ "$answer" = "n" ]; then
  # Display message if the operation is aborted
  read -r -p "Operation aborted, press enter to close..." dummy
else
  # Display message for invalid input
  read -r -p "Invalid input. Operation aborted, press enter to close..." dummy
fi

# Exit the script
exit 0
