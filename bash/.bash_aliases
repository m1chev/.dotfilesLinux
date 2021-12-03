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

# VPN
alias vpncheck='firefox https://nexus.tech.vereign.com/'

# Local IP
alias localip="hostname -I | awk '{print $1}'"

# Nvim as Vim
alias vim='nvim'

# Global IP
alias globalip='curl ipconfig.io'
