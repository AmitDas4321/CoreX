clear

if [ -d "/data/data/com.termux" ]; then
    WLC_SCRIPT="$PREFIX/etc/wlc.py"
    CNF="$PREFIX/libexec/termux/command-not-found"
else
    WLC_SCRIPT="/etc/wlc.py"
fi

echo -e "\e[1;36m╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮\e[0m"
echo -e "\e[1;36m┃  \e[1;32m[★] \e[1;35mC O R E X   S E C U R E   T E R M I N A L \e[1;32m[★]\e[1;36m  ┃\e[0m"
echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;33m            We Are Anonymous. We Are Legion.\e[0m"
echo

if command -v figlet >/dev/null 2>&1; then
    if command -v lolcat >/dev/null 2>&1; then
        figlet -f standard "__USERNAME__" | lolcat
    else
        figlet -f standard "__USERNAME__"
    fi
else
    echo "__USERNAME__"
fi

echo -e "\e[1;36m┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\e[0m"
echo -e "\e[1;37m              We Do Not HaCk To Impress,\e[0m"
echo -e "\e[1;31m                 We HaCk To Express.\e[0m"
echo -e "\e[1;36m╰━━━━━━━━━━━━━━ \e[1;34m[★] \e[1;32mIND H@ckers \e[1;34m[★] \e[1;36m━━━━━━━━━━━━━━╯\e[0m"

if [ -f "$WLC_SCRIPT" ]; then
    python3 "$WLC_SCRIPT" 2>/dev/null || python "$WLC_SCRIPT"
fi

if [ -n "$CNF" ] && [ -x "$CNF" ]; then
    command_not_found_handle() {
        "$CNF" "$1"
    }
fi

PS1='\[\e[1;36m\]╭─\[\e[1;34m\][\[\e[1;33m\]\T\[\e[1;34m\]]\[\e[1;36m\]──\[\e[1;34m\][\[\e[1;35m\]\d\[\e[1;34m\]]\[\e[1;36m\]
│
╰─\[\e[1;34m\][\[\e[1;31m\]★ __USERNAME__\[\e[1;34m\]]\[\e[1;37m\]─\[\e[1;34m\][\[\e[1;32m\]\w\[\e[1;34m\]]\[\e[1;37m\]
 \[\e[1;36m\]╰─►\[\e[1;32m\] '

printf '\e[6 q'