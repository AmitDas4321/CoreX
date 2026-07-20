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


echo -e "\e[1;36m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;36m┃            \e[1;35mC O R E X   I N S T A L L E R\e[1;36m           ┃\e[0m"
echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m         Welcome to the CoreX Installer\e[0m"
echo -e "\e[1;36m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo


while true; do
    read -p "Do you want to install CoreX Theme? (Y/N): " CHOICE

    case "$CHOICE" in
        [Yy])
            break
            ;;
        [Nn])
            echo
            echo -e "\e[1;31mInstallation cancelled.\e[0m"
            exit 0
            ;;
        *)
            echo "Please enter Y or N."
            ;;
    esac
done


echo
read -p "Enter your name: " USERNAME


echo
echo "[1/4] Installing theme..."


if [ "$PLATFORM" = "LINUX" ]; then
    mkdir -p "$HOME/.corex"
fi


if [ ! -f "$BACKUP_PATH" ]; then
    cp "$BASHRC_PATH" "$BACKUP_PATH"
    echo "[✓] Backup created"
fi


cp bash.bashrc "$BASHRC_PATH"
cp wlc.py "$WLC_PATH"


echo "[2/4] Personalizing..."


sed -i "s/__USERNAME__/$USERNAME/g" "$BASHRC_PATH"
sed -i "s/__USERNAME__/$USERNAME/g" "$WLC_PATH"


echo "[3/4] Applying configuration..."


chmod 600 "$BASHRC_PATH"
chmod 600 "$WLC_PATH"


echo "[4/4] Finishing..."

sleep 1
clear


echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃           C O R E X   I N S T A L L E D            ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m          Welcome, $USERNAME!                       \e[0m"
echo -e "\e[1;36m      Enjoy Your New Terminal Experience             \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"


echo

read -p "Restart terminal shell now? (Y/N): " RESTART

case "$RESTART" in
    [Yy])
        exec bash
        ;;
    *)
        echo "Run 'bash' later to apply changes."
        ;;
esac