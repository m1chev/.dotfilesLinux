# BackUp of my main settings for Linux

## Storage of my essential configurations needed for initial start of GNU operating systems

- bash
- git
- intellij
- note
- spacevim
- vim
- nvim

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

To initially move and create symlinks from the target files/directories
first run and check the output from this command:

```
stow --adopt -nvt ~ */
```

Then remove the 'n' option if you are happy with the result:

```
stow --adopt -vt ~ */
```

To stow - create symlinks using

```
stow -vt ~ */
```

To unstow - delete symlinks and return the files:

```
stow -vDt ~ */
```
