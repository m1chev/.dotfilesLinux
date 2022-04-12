#!/usr/bin/env bash

# Get week number
alias week='date +%V'

# Show hidden files
alias l='ls -lh'
alias ll='ls -lah'

# Create parent diretories on demand
alias mkdir='mkdir -pv'

# Ping stop after 5 count packets
alias ping='ping -c 5'

# Useful commands
# alias bc='bc -l' # calculator

# Start jMeter
alias jmeter='cd ~/jMeter/bin/ && ./jmeter'

## VPN
# alias vpncheck='firefox https://nexus.tech.vereign.com/'
alias vpnch="\
  curl \
    -X POST https://batch-service.rse-test.k8s.vereign.com/api/getStatuses \
    -d '{\"key\": \"test_seal_id\"}'\
    | jq
  "

# function vpnch() {
  # curl -X POST https://batch-service.rse-test.k8s.vereign.com/api/getStatuses -d '{"key":"test_seal_id"}' | jq
# }

vpn () {
  if [ $1 = 'off' ]; then
    skip="#"
    be="down"
  elif [ $1 = 'on' ]; then
    skip=""
    be="up"
  fi

  sudo chattr -i /etc/resolv.conf
  printf "${skip}nameserver 10.6.16.100\nnameserver 1.1.1.1" | sudo tee /etc/resolv.conf
  sudo chattr +i /etc/resolv.conf
  nmcli con ${be} vereign
}

# Local IP
alias localip="hostname -I | awk '{print $1}'"

# Nvim as Vim
alias vim='nvim'

# Global IP
alias globalip='curl ipconfig.io'

# Vereign Token
alias vtoken="\
  curl \
    --request POST \
    --url https://azure-dev.vrgnservices.com/auth/api/internal/token \
    --header 'Authorization: Basic YXp1cmUtZGV2OjJ1QXtPMj5iRVU/MilrW29gI0J1cmU2L0IiS0x1Rg==' \
    --header 'Content-Type: application/json' \
    --data '{ \"email\": \"georgi.michev@vereign.com\" }'\
    | jq
  "

## Kali Linux
## first command is to download and run container
## second is for starting container
# docker container run -it --interactive --name kali kalilinux/kali-rolling /bin/bash
# alias kali='docker container start -ai kali'

## Debian linux
# docker container run -it --interactive --name debian debian /bin/bash
# alias debian='docker container start -ai debian'
alias ubuntu='docker container start -ai ubuntu'

### Docker
function dockershellhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/bash -v `pwd`:/${dirname} -w /${dirname} "$@"
}

function dockershhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
}

alias dc='docker-compose'
alias jmeter='/home/michev/jdk/jmeter-5.4.3/bin/jmeter'
alias ..='cd ..'
alias ...='cd ../../'

