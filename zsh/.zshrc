# Config for zsh shell

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[blue]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%19</..<%~%{$reset_color%}$%b "

# History in cache directory:
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.config/.zsh_history
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=0

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# Load aliases and shortcuts if existent.
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

# Load zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-autosuggestions
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^f' autosuggest-accept

# Load zsh-syntax-highlighting; should be last.
# run: $apt/dnf install zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2 >/dev/null
