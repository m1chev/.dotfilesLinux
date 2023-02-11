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
alias archlinux='docker container start -ai archlinux'

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
alias jmeter='/home/michev/.jdks/jMeter/bin/jmeter'
alias ..='cd ..'
alias ...='cd ../../'

alias open="xdg-open"
