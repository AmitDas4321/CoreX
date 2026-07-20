#!/data/data/com.termux/files/usr/bin/bash

clear

echo -e "\e[1;31m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;31m┃        \e[1;37mC O R E X   U N I N S T A L L E R\e[1;31m        ┃\e[0m"
echo -e "\e[1;31m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m          Restoring Default Termux Settings...\e[0m"
echo

sleep 1

# Restore default bash configuration
if [ -f "$PREFIX/etc/bash.bashrc.dpkg-dist" ]; then
    cp "$PREFIX/etc/bash.bashrc.dpkg-dist" "$PREFIX/etc/bash.bashrc"
    echo -e "\e[1;32m[✓] Default bash.bashrc restored.\e[0m"
else
    echo -e "\e[1;31m[✗] Default configuration not found.\e[0m"
fi

# Remove welcome script
rm -f "$PREFIX/etc/wlc.py"

echo
echo -e "\e[1;32m[✓] CoreX Theme removed successfully.\e[0m"
echo -e "\e[1;36m[✓] Cleaning files...\e[0m"

sleep 1

clear

echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃              U N I N S T A L L   D O N E           ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m              Thank you for using CoreX             \e[0m"
echo -e "\e[1;36m          Default Termux restored successfully      \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"

sleep 2

exec bash