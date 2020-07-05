# Shu’s dotfiles ･ﾟ(๑˃ᴗ˂)ﻭ･ﾟ✧

**Dotfiles repo for my customized dev toolbox!**

![screenshot](./assets/screenshot.png)

- Configurations \& Themes for:
    - shell-related: bash, zsh, oh-my-zsh, tmux, cmus
    - editor-related: vim, vundle, code-server
    - dev-related: git, ipython, jupyter
    - file manager and monitor: ranger, htop
    - key remappers: karabiner, autohotkey, HHKB binary

- Usage:
    - Place repo anywhere in a (fresh) Linux/macOS system 
    - For app installation, simply: `sudo apt-get install ranger zsh curl git vim exuberant-ctags fzf`
    - For oh-my-zsh, one more: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - In repo root dir: `./rock`, for vim plugins and coc: `:PluginInstall; :CocInstall coc-python` etc.
    - Enjoy!
   
- Add git submodules:
    - Vundle.vim: `git submodule add https://github.com/VundleVim/Vundle.vim editor/vim/bundle/Vundle.vim`
    - zsh-autosuggestions: `git submodule add https://github.com/zsh-users/zsh-autosuggestions shell/oh-my-zsh/custom/plugins/zsh-autosuggestions`
    - zsh-completions: `git submodule add https://github.com/zsh-users/zsh-completions shell/oh-my-zsh/custom/plugins/zsh-completions`

- Powered by [dotbot](https://github.com/anishathalye/dotbot)
