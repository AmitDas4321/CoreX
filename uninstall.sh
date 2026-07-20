#!/data/data/com.termux/files/usr/bin/bash

clear
echo "=================================="
echo "      CoreX Uninstaller"
echo "=================================="
echo

# Restore default bash configuration
if [ -f "$PREFIX/etc/bash.bashrc.dpkg-dist" ]; then
    cp "$PREFIX/etc/bash.bashrc.dpkg-dist" "$PREFIX/etc/bash.bashrc"
    echo "[✓] Default bash.bashrc restored."
else
    echo "[✗] Default configuration not found."
fi

# Remove welcome script
rm -f "$PREFIX/etc/wlc.py"

echo
echo "[✓] CoreX Theme has been removed successfully."
echo "[✓] Restarting shell..."
sleep 2

exec bash