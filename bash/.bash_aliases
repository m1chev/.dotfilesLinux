#!/usr/bin/env bash

# Include Vereign config
source ~/.vereign_aliases

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

# Local IP
alias localip="hostname -I | awk '{print $1}'"

# Nvim as Vim
alias vim='nvim'

# Global IP
alias globalip='curl ipconfig.io'
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
### example - `dockershellhere ubuntu`
function dockershellhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/bash -v `pwd`:/${dirname} -w /${dirname} "$@"
}

function dockershhere() {
    dirname=${PWD##*/}
    docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
}

alias dockerc='docker-compose'
alias jmeter='/home/michev/jdk/jmeter-5.4.3/bin/jmeter'
alias ..='cd ..'
alias ...='cd ../../'
