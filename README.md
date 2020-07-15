# Get-Ready-with-Me!

**Sync fast and live the immortal \& elegant CLI-powered UNIX lifestyle!**  
Scripts and dotfiles for setting up and managing a custom system environment.  

*v1.0 (July 15, 2020): SOP works out-of-the-box and takes <30m from flashing to done.*


![screenshot](./assets/screenshot.png)


## Repertoire

This customized set includes two parts: 
- **Rock**: Shell scripts for core toolkit and env installation
- **Roll**: Dotfiles applying personal configs \& themes for:
  - **shell-related**: bash, zsh, oh-my-zsh, tmux, cmus 
  - **editor-related**: vim, vundle, code-server 
  - **dev-related**: git, ipython, jupyter (vim-jupyter) 
  - **file manager and monitor**: ranger, htop 
  - **remappers:** karabiner, autohotkey, HHKB-YD binary, xmodmap

Inspired and powered by [dotbot](https://github.com/anishathalye/dotbot) and [gruvbox](https://github.com/morhetz/gruvbox)


## SOP

Starting from a clean install, assuming a Debian-based system and a GNOME-based DE:
- **Basics:**
  - BIOS and drivers: kb, tracking, bt, wifi, display, fprint, battery, sleep/suspend, speaker, and mic 
  - Shortcuts: Switch app: Ctrl+Tab, Switch windows: Super+Tab, Close/Hide window: Ctrl+q/h, Full: Shift+Ctrl+f
  - For MBP, in display select FHD resolution with 100% scaling, disable hi-res daemon
  - `cd ~; git clone https://github.com/hughshuwang/grwm; cd grwm` 
  - `./rock`, switch to xfce4-term; `./roll` after selecting xmodmap conf in roll.conf, reboot
  - `sudo apt-get install mbpfan` for MBP and check by `lsmod | grep -e applesmc -e coretemp`
  - `git config --global credential.helper store` then `git pull/push` to enter credentials
  - `:PluginInstall` in vim, `cd ~/.vim/bundle/YouCompleteMe; python3 install.py`
  - xfce4-terminal: 110 * 50, Fira Mono 11, xwidth 1.1, transparency 0.95
  - In chrome, install gnome shell extentions and apply transparent top bar 
  - In tweaks, change theme to `Adwaita-dark`, top bar shows battery pctg
  - For extra packages, `sudo zsh ./debs/install.sh`
- **Python/Anaconda**:
  - Run `chmod +x python_install.sh` and `./python_install.sh` twice (restart shell in between)
  - Run `python python_test.py` to test python environment, (base) auto-loaded


## Whitelist

This toolbox has been tested in the following environments:
- **Darwin**, macOS Catalina 10.15.5 (x86)
- **Debian 10 Buster**, GCP Compute Engine (x86)
- **Pop OS 20.04 LTS**, Thinkpad X1 Carbon Gen7 (x86)
- **Ubuntu 20.04 LTS**, Raspberry Pi 4 (aarch64)
- **Ubuntu 18.04 LTS**, WSL2 on Windows 10 (x86)


## Transition

Git submodules (dotbot and vim/zsh plugins) should be handled carefully during repo transition:
- **dotbot**: `git submodule add https://github.com/anishathalye/dotbot dotbot`
- **Vundle.vim**: `git submodule add https://github.com/VundleVim/Vundle.vim editor/vim/bundle/Vundle.vim`
