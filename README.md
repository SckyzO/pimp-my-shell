# Pimp my Vim!

Custom vim configuration, highly inspired from [VIM and Python – A Match Made in Heaven](https://realpython.com/vim-and-python-a-match-made-in-heaven/)

![Preview](screenshot.png)

## Install
### Requirements
Before running `setup.sh` make sure your system meets all the requirements below :

- vim (yeah, really)
- git
- build-essential
- cmake
- python
- python-pip

You can install them with `
```
sudo apt-get update
sudo apt-get install -y vim git build-essential cmake python python-pip
```
or for CentOS/Fedora/RedHAt
```
sudo dnf udpate
sudo dnf install -y vim git cmake pyton-pip
sudo yum groupinstall 'Development Tools'
```

end run `bash setup.sh`

### Note
This script was tested on Ubuntu > 16.04

## Mappings

| Controls | Mode | Description |
| -------- | ---- | ----------- |
| `Ctrl` + `hjkl` | `Normal` | Switch panes |
| `Ctrl` + `hjkl` | `Insert` | Move |
| `Ctrl` + `Space` | `Normal` | Toggle NERDTree |


## Credits
1. [VIM and Python – A Match Made in Heaven](https://realpython.com/vim-and-python-a-match-made-in-heaven/)  
2. [Vundle - Vim Plugin Manager](https://github.com/gmarik/Vundle.vim)  
3. [YouCompleteMe - Vim Plugin](https://github.com/Valloric/YouCompleteMe)  
4. [Syntastic - Vim Plugin](https://github.com/vim-syntastic/syntastic)  
5. [Vim-Flake8 - Vim Plugin](https://github.com/nvie/vim-flake8)  
6. [NERDTree - Vim Plugin](https://github.com/scrooloose/nerdtree)  
7. [NERDTreeTabs - Vim Plugin](https://github.com/jistr/vim-nerdtree-tabs)  
8. [Powerline - Vim Plugin](https://github.com/powerline/powerline)  
9. [Rupza - Vim Color Scheme](https://github.com/felipesousa/rupza)  

