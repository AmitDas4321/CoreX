#!/data/data/com.termux/files/usr/bin/bash

clear
echo "============================"
echo "     CoreX Installer"
echo "============================"
echo

read -p "Enter your name: " USERNAME

cp bash.bashrc "$PREFIX/etc/bash.bashrc"
cp wlc.py "$PREFIX/etc/wlc.py"

sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/bash.bashrc"
sed -i "s/__USERNAME__/$USERNAME/g" "$PREFIX/etc/wlc.py"

echo
echo "Installation completed successfully!"
echo "Restart Termux or run:"
echo "exec bash"