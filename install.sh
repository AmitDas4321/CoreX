clear

echo -e "\e[1;36m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;36m┃            \e[1;35mC O R E X   I N S T A L L E R\e[1;36m           ┃\e[0m"
echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m         Welcome to the CoreX Installer\e[0m"
echo -e "\e[1;36m╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯\e[0m"
echo

if [ -d "/data/data/com.termux" ]; then
    INSTALL_DIR="$PREFIX/etc"
    USE_SUDO=""
else
    INSTALL_DIR="/etc"
    USE_SUDO="sudo"
fi

while true; do
    read -p "Do you want to install CoreX Theme? (Y/N): " CHOICE

    case "$CHOICE" in
        [Yy]) break ;;
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

if [ ! -f "$INSTALL_DIR/bash.bashrc.bak" ]; then
    $USE_SUDO cp "$INSTALL_DIR/bash.bashrc" "$INSTALL_DIR/bash.bashrc.bak" 2>/dev/null
fi

$USE_SUDO cp bash.bashrc "$INSTALL_DIR/bash.bashrc"
$USE_SUDO cp wlc.py "$INSTALL_DIR/wlc.py"

echo "[2/4] Personalizing..."

$USE_SUDO sed -i "s/__USERNAME__/$USERNAME/g" "$INSTALL_DIR/bash.bashrc"
$USE_SUDO sed -i "s/__USERNAME__/$USERNAME/g" "$INSTALL_DIR/wlc.py"

echo "[3/4] Applying configuration..."

$USE_SUDO chmod 644 "$INSTALL_DIR/bash.bashrc"
$USE_SUDO chmod 755 "$INSTALL_DIR/wlc.py"

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