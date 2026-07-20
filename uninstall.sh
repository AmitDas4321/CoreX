clear

echo -e "\e[1;31m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;31m┃        \e[1;37mC O R E X   U N I N S T A L L E R\e[1;31m        ┃\e[0m"
echo -e "\e[1;31m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m          Restore Default Termux Settings\e[0m"
echo -e "\e[1;31m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo


# Confirm uninstall
while true; do
    read -p "Do you want to uninstall CoreX Theme? (Y/N): " CHOICE

    case "$CHOICE" in
        [Yy])
            break
            ;;
        [Nn])
            echo
            echo -e "\e[1;31mUninstall cancelled.\e[0m"
            exit 0
            ;;
        *)
            echo -e "\e[1;33mPlease enter Y or N.\e[0m"
            ;;
    esac
done


echo
echo -e "\e[1;33mRestoring Default Termux Settings...\e[0m"
echo

sleep 1


# Restore default bash configuration
if [ -f "$PREFIX/etc/bash.bashrc.bak" ]; then
    cp "$PREFIX/etc/bash.bashrc.bak" "$PREFIX/etc/bash.bashrc"
    echo -e "\e[1;32m[✓] Original bash.bashrc restored.\e[0m"
else
    echo -e "\e[1;31m[✗] Backup not found.\e[0m"
fi


# Remove CoreX files
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

echo

read -p "Restart Termux shell now? (Y/N): " RESTART

case "$RESTART" in
    [Yy])
        exec bash
        ;;
    *)
        echo
        echo -e "\e[1;33mRun 'bash' later to apply changes.\e[0m"
        ;;
esac