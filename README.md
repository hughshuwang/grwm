# Shu’s dotfiles! ･ﾟ(๑˃ᴗ˂)ﻭ･ﾟ✧

**Living the immortal \& elegant CLI-powered UNIX lifestyle!**  
"Now I only need two apps on my device: a terminal and a browser, nothing more."  

![screenshot](./assets/screenshot.png)


## Repertoire

This customized set includes configs \& themes for:
- **shell-related**: bash, zsh, oh-my-zsh, tmux, cmus
- **editor-related**: vim, vundle, code-server
- **dev-related**: git, ipython, jupyter (vim-jupyter)
- **file manager and monitor**: ranger, htop
- **remappers:** karabiner, autohotkey, HHKB-YD binary
- Inspired and powered by [dotbot](https://github.com/anishathalye/dotbot) and [gruvbox](https://github.com/morhetz/gruvbox)


## Standard Procedure (30mins)

Starting from a clean Linux install, assuming a Debian-based system and a GNOME-based desktop:
- Part I, hardware checks:
  - BIOS and drivers. (kb, tracking, bt, wifi, display, fprint, battery, sleep/suspend, speaker and mic) 
  - Shortcuts: Switch app: Ctrl+Tab, Switch windows: Super+Tab, Close/Hide window: Ctrl+q/h, Full: Shift+Ctrl+f
  - For MBP, in display select low resolution with 100% scaling, disable hi-res daemon
- Part II, software:
  - `sudo apt install git; cd ~; git clone https://github.com/hughshuwang/dotfiles; cd dotfiles` 
  - `./rock`, switch to xfce4-term, now zsh should be default, if not `chsh -s $(which zsh)` 
  - `./roll` to deploy dotfiles after selecting keyboard conf file, copy xmodmap.desktop, reboot
  - `sudo apt-get install mbpfan` for MBP and check by `lsmod | grep -e applesmc -e coretemp`
  - `git config --global credential.helper store` then `git pull/push` and enter credentials to save 
  - `:PluginInstall` in vim, for ycmd `cd ~/.vim/bundle/YouCompleteMe; python3 install.py`
  - xfce4-terminal: 110 * 50, Fira Mono 11, xwidth 1.1, transparency 0.90
  - In chrome, install gnome shell extentions and apply transparent top bar 
  - In tweaks, change theme to `Adwaita-dark`
  - In ./debs, `sudo zsh ./install.sh`
- Part III, Python/Anaconda:
  - Run `chmod +x python_install.sh` and `./python_install.sh` twice (restart shell in between)
  - Run `python dotfiles/env/python_test.py` to test python environment
  - Everytime after restart a (base) environment should automatically loaded 
- TODOs:
  - Share clipboard and vim copy to terminal
  - Auto-completion: coc not working, using ycmd, using sudo apt install vim-youcompleteme; vim-addon-manager install youcompleteme not working, following offcial guidelines
  - ycmd install: 


## Tests

This toolbox has been tested in the following environments:
- **Darwin**, OS X Catalina 10.15.5 (x86)
- **Debian 10 Buster**, GCP Compute Engine (x86)
- **Pop OS 20.04 LTS**, Thinkpad X1 Carbon Gen7 (x86)
- **Ubuntu 20.04 LTS**, Raspberry Pi 4 (aarch64)
- **Ubuntu 18.04 LTS**, WSL2 on Windows 10 (x86)

Majority of it works out of the box, but some tweaks might be required:
- coc-vim, yarn, and python support for vim might need extra steps
- Previously existed personal configs and themes might require proper backups


## Transition

Git submodules (dotbot and vim/zsh plugins) should be handled carefully during repo transition:
- **dotbot**: `git submodule add https://github.com/anishathalye/dotbot dotbot`
- **Vundle.vim**: `git submodule add https://github.com/VundleVim/Vundle.vim editor/vim/bundle/Vundle.vim`
- zsh plugins can handled in the installation script.


## Extra Notes

"My own dotfiles have been open sourced, and parts of my configuration are inspired by other people’s dotfiles. However, my dotfiles are my own personal settings, and I understand every bit of code and configuration in there. That is important. There are some people who have forked my dotfiles, but I do not recommend that approach. Copying parts of my configuration, however, is encouraged! It’s best when you understand what you are using — that’s why I’ve tried to keep my dotfiles organized and well-commented." [link](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
