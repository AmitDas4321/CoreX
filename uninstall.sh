clear

echo -e "\e[1;31m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;31m┃        \e[1;37mC O R E X   U N I N S T A L L E R\e[1;31m        ┃\e[0m"
echo -e "\e[1;31m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m          Restore Default Terminal Settings\e[0m"
echo -e "\e[1;31m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo

if [ -d "/data/data/com.termux" ]; then
    TARGET="$PREFIX/etc/bash.bashrc"
    BACKUP="$PREFIX/etc/bash.bashrc.bak"
    WLC="$PREFIX/etc/wlc.py"
    USE_SUDO=""
    PLATFORM="Termux"
else
    TARGET="/etc/bash.bashrc"
    BACKUP="/etc/bash.bashrc.bak"
    WLC="/etc/wlc.py"
    USE_SUDO="sudo"
    PLATFORM="Linux"
fi

while true; do
    read -p "Do you want to uninstall CoreX Theme? (Y/N): " CHOICE

    case "$CHOICE" in
        [Yy]) break ;;
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
echo -e "\e[1;33mRestoring Default $PLATFORM Settings...\e[0m"
echo

sleep 1

if [ -f "$BACKUP" ]; then
    $USE_SUDO cp "$BACKUP" "$TARGET"
    echo -e "\e[1;32m[✓] Original bash configuration restored.\e[0m"
else
    echo -e "\e[1;31m[✗] Backup not found.\e[0m"
fi

$USE_SUDO rm -f "$WLC"

echo
echo -e "\e[1;32m[✓] CoreX Theme removed successfully.\e[0m"
echo -e "\e[1;36m[✓] Cleaning files...\e[0m"

sleep 1
clear

echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃              U N I N S T A L L   D O N E           ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m              Thank you for using CoreX             \e[0m"
echo -e "\e[1;36m      Default terminal restored successfully        \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"

echo

read -p "Restart shell now? (Y/N): " RESTART

case "$RESTART" in
    [Yy])
        exec bash
        ;;
    *)
        echo
        echo -e "\e[1;33mRun 'bash' later to apply changes.\e[0m"
        ;;
esac