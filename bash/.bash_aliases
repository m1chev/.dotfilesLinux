#!/usr/bin/env bash

# Get week number
alias week='date +%V'

# Show hidden files
alias ll='ls -lah'

# Create parent diretories on demand
alias mkdir='mkdir -pv'

# Ping stop after 5 count packets
alias ping='ping -c 5'

# Useful commands
# alias bc='bc -l' # calculator

# Start jMeter
alias jmeter='cd ~/jMeter/bin/ && ./jmeter'

# VPN workaround for Fedora
alias vpn='sudo systemd-resolve -i tun0 --set-dns=10.6.16.100 --set-dns=10.6.16.100 --set-domain=~dc1.vereign.com --set-domain=~tech.vereign.com --set-domain=~k8s.vereign.com --set-domain=~dev.vereign.com'

# Local IP
alias localip='hostname -I | awk \'{print $1}\''

# Global IP
alias globalip='curl ipconfig.io'

# If you need to add aliases for Fish then edid the file below
# ~/.config/fish/config.fish
