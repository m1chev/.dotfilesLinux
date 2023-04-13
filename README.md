# BackUp of my main settings for Linux

## Storage of my essential configurations needed for initial start of GNU operating systems

- bash
- git
- intellij
- note
- spacevim
- vim
- nvim
- zsh

## Setup

Install Stow:

- Fedora

```
sudo dnf install stow
```

- Debian based distros:

```
sudo apt install stow
```

For more details about the commands use man:

```
man stow
```

The 'n' parameter is used for dry run, remove it if happy with the result.


To stow - apply the files (create symlinks in target from this repository): 

```
stow -nvt ~ zsh
```
or for ALL - not recommended
```
stow -nvt ~ */
```

To unstow - delete symlinks and return the files:

```
stow -vDt ~ */
```
## Add files to the repository

To initially move and create symlinks from the target files/directories
first run and check the output from this command:

```
stow --adopt -nvt ~ */
```

### Stow ZSH

There are some preparation needed before applying the configuration files.  
Steps:
1. Install ZSH [oh-my-zsh](https://ohmyz.sh/#install)  
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```
2. Clone and install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
3. Clone and install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
