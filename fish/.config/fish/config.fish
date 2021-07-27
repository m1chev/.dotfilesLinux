alias ll='ls -lha'

# VPN workaround for Fedora
alias vpn='sudo systemd-resolve -i tun0 --set-dns=10.6.16.100 --set-dns=10.6.16.100 --set-domain=~dc1.vereign.com --set-domain=~tech.vereign.com --set-domain=~k8s.vereign.com --set-domain=~dev.vereign.com'

# VPN Check
alias vpncheck='firefox https://nexus.tech.vereign.com/'

# Local IP
alias localip='hostname -I | awk \'{print $1}\''

# Global IP
alias globalip='curl ipconfig.io'

# Start Kali with Docker
# alias kali='sudo docker run --tty --interactive kalilinux/kali-rolling /bin/bash'
# alias kali='sudo docker run --tty --interactive kalilinux/kali-bleeding-edge/bin/bash'
alias kali='sudo docker container start 992a5ba9a6a5 & sudo docker attach 992a5ba9a6a5'
# alias kali='sudo docker run -it --rm 99b9a83a4c1e /bin/bash'

# Vim to NeoVim
alias vim='nvim'
