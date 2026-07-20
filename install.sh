#!/data/data/com.termux/files/usr/bin/bash

clear

echo -e "\e[1;36m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;36m┃            \e[1;35mC O R E X   I N S T A L L E R\e[1;36m           ┃\e[0m"
echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m          Installing CoreX Termux Theme...\e[0m"
echo

sleep 1

read -p "Enter your name: " USERNAME

echo
echo -e "\e[1;34m[1/4]\e[0m Installing theme files..."
cp bash.bashrc "$PREFIX/etc/bash.bashrc"
cp wlc.py "$PREFIX/etc/wlc.py"

echo -e "\e[1;34m[2/4]\e[0m Personalizing theme..."
sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/bash.bashrc"
sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/wlc.py"

echo -e "\e[1;34m[3/4]\e[0m Setting permissions..."
chmod 600 "$PREFIX/etc/bash.bashrc"
chmod 600 "$PREFIX/etc/wlc.py"

echo -e "\e[1;34m[4/4]\e[0m Finalizing installation..."

sleep 1
clear

echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃              I N S T A L L A T I O N   D O N E      ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m              Welcome, $USERNAME!                   \e[0m"
echo -e "\e[1;36m         CoreX Theme Installed Successfully         \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"

echo
echo -e "\e[1;33mRestarting Termux shell...\e[0m"

sleep 2

exec bash