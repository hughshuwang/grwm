# Get-Ready-with-Me! 🤩

**Sync fast and live the immortal \& elegant GNU/Linux lifestyle!**  
***@debian @vim @i3wm @zsh @ranger @xfce4-term @vscode @hhkb***  
Scripts and dotfiles for setting up and managing a custom system environment.  



*v1.1 (July 22, 2020): Perfect experience with MBP A1502 + Pop!_OS 20.04 LTS + i3wm.*  
*v1.0 (July 15, 2020): SOP works out-of-the-box and takes <20m from flashing to done.*




## TODO

Priorities are shown as below:
- LAMP infrastructure
- DAW (bitwig), MIDI, audio interface, and electric guitar support, lilypond
- Test raw Manjaro ARM + i3wm on Pi 4
- Auto-adjust screen resolution and dpi after login
- External/multiple display (4K) support



## Repertoire

This customized set includes two parts: 
- **Rock**: Shell scripts for core toolkit and env installation
- **Roll**: Dotfiles applying personal configs \& themes for:
  - **editor-related**: vim, vundle, ycmd, etc.
  - **file manager and monitor**: ranger, htop, apfs
  - **shell-related**: bash, zsh, oh-my-zsh, tmux, cmus 
  - **dev-related**: git, ipython, jupyter (vim-jupyter), vscode, code-server
  - **DE/WM**: GNOME3, xfce4-term, i3wm, i3status, gtk3, fusuma, compton
  - **remappers:** karabiner, autohotkey, HHKB-YD hardware binary, xmodmap

Inspired and powered by [dotbot](https://github.com/anishathalye/dotbot) and [gruvbox](https://github.com/morhetz/gruvbox)



## SOP

Starting from a clean install, assuming a Debian-based system:
- **Basics:**
  - UEFI and drivers: disable Secure-Boot; check kb, tracking, bt, wifi, display, fprint, battery, sleep/suspend, speaker, and mic 
  - Shortcuts: Switch app: Ctrl+Tab, Switch windows: Super+Tab, Close/Hide window: Ctrl+q/h, Full: Shift+Ctrl+f
  - For MBP, in display select FHD resolution with 100% scaling, disable hi-res daemon
  - `cd ~; git clone https://github.com/hughshuwang/grwm; cd grwm` 
  - `./rock`, in the middle, get in zsh, exit to finish the rest, switch to xfce4-term when done
  - `./roll` after selecting the correct (win/mac) xmodmap conf in roll.conf, reboot/relogin
  - `sudo apt-get install mbpfan` for MBP and check by `lsmod | grep -e applesmc -e coretemp`
  - `git config --global credential.helper store` then `git pull/push` to enter credentials
  - `:PluginInstall` in vim, `python3 ~/.vim/bundle/YouCompleteMe/install.py` to build ycmd
  - In chrome, install gnome shell extentions and apply transparent top bar, add input source
  - In tweaks, change theme to `Adwaita-dark`, top bar shows battery pctg
  - For extra packages, `sudo zsh ./debs/install.sh`, more: WPS, Teams, Teamviewer

- **Python/Anaconda**:
  - Run `chmod +x python_install.sh` and `./python_install.sh` twice (restart shell in between)
  - Run `python python_test.py` to test python environment, (base) auto-loaded

- **APFS**:
  - Run `sudo zsh ./apfs` to install dependensies
  - `git clone https://github.com/sgan81/apfs-fuse.git; cd apfs-fuse`
  - `git submodule init; git submodule update`
  - `mkdir build; cd build; cmake ..;` and `ccmake ..` turn FUSE 3.0 OFF
  - `make`, then run `sudo ./apfs-fuse <device> /mnt/` to mount
  - `sudo -s` and open file manager with `xdg-open /`, `umount /mnt/` when it's done
  - More info see [ref](https://github.com/sgan81/apfs-fuse)




## Problems Solved

A list of obstacles I didn't expect:
- Running MS Teams in chrome requiring "allowing third party cookies"
- Lid suspend/sleep: set `HandlePowerKey`, `HandleLidSwitch`, `IdleAction`, etc. in `/etc/systemd/logind.conf`, [ref](https://www.reddit.com/r/i3wm/comments/5g86f1/suspend_on_lid_close/)
- Natural Scrolling, tapping for click, and tap and hold for dragging: `sudo vim /usr/share/X11/xorg.conf.d/40-libinput.conf`, add `Option "NaturalScrolling" "on"; Option "Tapping" "on"; Option "TappingDrag" "on"` to touchpad sections
- Screen brightness control: [xbacklight](https://askubuntu.com/questions/715306/xbacklight-no-outputs-have-backlight-property-no-sys-class-backlight-folder), resolution needs to be reload `ctrl+shift+s` after login
- System-wise GUI appearance: use `lxappearance` to select gtk themes `Adwaita-dark` or `arc-dark`, icons `pop`, and fonts



## Compatibility

Before v1.1, this toolbox worked out-of-the-box for macOS 10.15 Catalina, Debian 10 Buster, and Ubuntu 20.04/18.04 LTS in x86 and aarch64 machines. As I switched my personal system completely from macOS to Linux (and then from GNOME3 to i3wm) at v1.1, this repo would only focus on Debian-based GNU/Linux family + i3wm going forward.



## Transition

Git submodules (dotbot and vim/zsh plugins) should be handled carefully during repo transition:
- **dotbot**: `git submodule add https://github.com/anishathalye/dotbot dotbot`
- **Vundle.vim**: `git submodule add https://github.com/VundleVim/Vundle.vim editor/vim/bundle/Vundle.vim`
