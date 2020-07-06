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


## Usage

The goal is to minimize the effort required for setting up and managing the personal system environment:
- **location:** `git clone` this repo anywhere in a (fresh) Linux/macOS system 
- **tool installation:** `sudo apt-get install ranger zsh curl git vim exuberant-ctags fzf tmux nodejs yarn`
- **oh-my-zsh:** `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- **repo root:**  `sh rock`, it will take care of all registered git submodules, when transitioning git repo, see below
- **vim plugins and coc**: `:PluginInstall; :CocInstall coc-python`
- **enjoy!**


## Tests

This toolbox has been tested in the following environments:
- **Darwin**, OS X Catalina 10.15.5 (x86)
- **Debian** 10 Buster, GCP Compute Engine (x86)
- **Ubuntu** 20.04 LTS, Raspberry Pi 4 (aarch64)
- **Ubuntu** 18.04 LTS, WSL2 on Windows 10 (x86)

Majority of it works out of the box, but some tweaks might be required:
- coc-vim, yarn, and python support for vim might need extra steps
- Previously existed personal configs and themes might require proper backups
- Zsh plugins might require manual installation


## Transition

Git submodules (dotbot and vim/zsh plugins) should be handled carefully during repo transition:
- **dotbot**: `git submodule add https://github.com/anishathalye/dotbot dotbot`
- **Vundle.vim**: `git submodule add https://github.com/VundleVim/Vundle.vim editor/vim/bundle/Vundle.vim`

Installation of oh-my-zsh plugins:
- **zsh-completions**: `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
- **zsh-autosuggestions**: `git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`
- **zsh-syntax-highlighting**: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`


## Extra Notes

"My own dotfiles have been open sourced, and parts of my configuration are inspired by other people’s dotfiles. However, my dotfiles are my own personal settings, and I understand every bit of code and configuration in there. That is important. There are some people who have forked my dotfiles, but I do not recommend that approach. Copying parts of my configuration, however, is encouraged! It’s best when you understand what you are using — that’s why I’ve tried to keep my dotfiles organized and well-commented." [link](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)




