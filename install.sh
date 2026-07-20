clear

echo -e "\e[1;36m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;36m┃            \e[1;35mC O R E X   I N S T A L L E R\e[1;36m           ┃\e[0m"
echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m         Welcome to the CoreX Installer\e[0m"
echo -e "\e[1;36m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo

# Confirm Installation
while true; do
    read -p "Do you want to install CoreX Theme? (Y/N): " CHOICE

    case "$CHOICE" in
        [Yy])
            break
            ;;
        [Nn])
            echo
            echo "Installation cancelled."
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

# Backup current bashrc
if [ ! -f "$PREFIX/etc/bash.bashrc.bak" ]; then
    cp "$PREFIX/etc/bash.bashrc" "$PREFIX/etc/bash.bashrc.bak"
fi

cp bash.bashrc "$PREFIX/etc/bash.bashrc"
cp wlc.py "$PREFIX/etc/wlc.py"

echo "[2/4] Personalizing..."

sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/bash.bashrc"
sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/wlc.py"

echo "[3/4] Applying configuration..."

chmod 600 "$PREFIX/etc/bash.bashrc"
chmod 600 "$PREFIX/etc/wlc.py"

echo "[4/4] Finishing..."

sleep 1
clear

echo -e "\e[1;32m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;32m┃           C O R E X   I N S T A L L E D            ┃\e[0m"
echo -e "\e[1;32m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m          Welcome, $USERNAME!                       \e[0m"
echo -e "\e[1;36m      Enjoy Your New Terminal Experience            \e[0m"
echo -e "\e[1;32m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"

sleep 2
exec bash