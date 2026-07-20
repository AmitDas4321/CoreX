#!/data/data/com.termux/files/usr/bin/bash

clear
echo "=================================="
echo "      CoreX Uninstaller"
echo "=================================="
echo

if [ -f "$PREFIX/etc/bash.bashrc.bak" ]; then
    mv "$PREFIX/etc/bash.bashrc.bak" "$PREFIX/etc/bash.bashrc"
    echo "[✓] Original bash.bashrc restored."
else
    echo "[!] Backup not found."
fi

rm -f "$PREFIX/etc/wlc.py"

echo
echo "[✓] CoreX Theme has been removed."
echo
echo "Restart Termux or run:"
echo "exec bash"