clear

if [ -d "/data/data/com.termux" ]; then
    PLATFORM="TERMUX"
    BASHRC_PATH="$PREFIX/etc/bash.bashrc"
    BACKUP_PATH="$PREFIX/etc/bash.bashrc.bak"
    WLC_PATH="$PREFIX/etc/wlc.py"
else
    PLATFORM="LINUX"
    BASHRC_PATH="$HOME/.bashrc"
    BACKUP_PATH="$HOME/.bashrc.corex.bak"
    WLC_PATH="$HOME/.corex/wlc.py"
fi


echo -e "\e[1;31m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;31m┃        \e[1;37mC O R E X   U N I N S T A L L E R\e[1;31m        ┃\e[0m"
echo -e "\e[1;31m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m          Restore Default Terminal Settings\e[0m"
echo -e "\e[1;31m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo


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
echo -e "\e[1;33mRestoring Default Terminal Settings...\e[0m"
echo

sleep 1


if [ -f "$BACKUP_PATH" ]; then

    cp "$BACKUP_PATH" "$BASHRC_PATH"

    echo -e "\e[1;32m[✓] Original bash configuration restored.\e[0m"

else

    echo -e "\e[1;31m[✗] Backup not found.\e[0m"

fi


rm -f "$WLC_PATH"


if [ "$PLATFORM" = "LINUX" ]; then
    rmdir "$HOME/.corex" 2>/dev/null
fi


echo
echo -e "\e[1;32m[✓] CoreX Theme removed successfully.\e[0m"
echo -e "\e[1;36m[✓] Cleaning files...\e[0m"

sleep 1

clear


echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃              U N I N S T A L L   D O N E           ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m              Thank you for using CoreX             \e[0m"
echo -e "\e[1;36m          Default terminal restored successfully     \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"

echo


read -p "Restart terminal shell now? (Y/N): " RESTART

case "$RESTART" in
    [Yy])
        exec bash
        ;;
    *)
        echo
        echo -e "\e[1;33mRun 'bash' later to apply changes.\e[0m"
        ;;
esac