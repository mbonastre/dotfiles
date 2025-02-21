# dotfiles

Miquel's .files managed with stow

## Requirements

GNU stow:

```
sudo apt-get install stow
```

## Setup

```
cd 
git clone https://github.com/mbonastre/dotfiles.git
```

## Usage

```
$ cd ${HOME}/dotfiles
$ stow bash
```

## Result

```
$ ls -l ~/.bash*
lrwxrwxrwx 1 mbon mbon     27 21 de febr. 15:56 /home/mbon/.bash_aliases -> dotfiles/bash/.bash_aliases
-rw-r--r-- 1 mbon mbon    171 14 d’ag.     2024 /home/mbon/.bash_completion
-rw------- 1 mbon mbon 146813 21 de febr. 16:06 /home/mbon/.bash_history
-rw-r--r-- 1 mbon mbon    220 22 de nov.   2022 /home/mbon/.bash_logout
lrwxrwxrwx 1 mbon mbon     21 21 de febr. 15:52 /home/mbon/.bashrc -> dotfiles/bash/.bashrc
```

