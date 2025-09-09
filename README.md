# Dotfiles

Repo to hold my dotfiles so that I can easily sync them between computers.

### Termux
When linking on termux, the full path to the dotfiles folder must be used.

ie: `/data/data/com.termux/files/home`


## Nvim

Default config based on [Typecraft's](https://youtube.com/@typecraft_dev?si=MlLIzreirX12VZLy) videos.

Also install: `lua`, `luarocks`, `cmake`
Link: `ln -s dotfiles/nvim ~/.config/nvim`

## Tmux
Largely taken from [gikeymarcia](https://github.com/gikeymarcia/tmux-config)
Default config based on [Typecraft's](https://youtube.com/@typecraft_dev?si=MlLIzreirX12VZLy) videos.

Link: `ln -s dotfiles/tmux.conf ~/.tmux.conf`  
Plugin manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## w3m

Mostly adapted from [Arch Wiki](https://wiki.archlinux.org/title/W3m) and [W3M Rocks](https://w3m.rocks/keymap)

Link: `ln -s dotfiles/w3m ~/.w3m`


## Taskwarrior

Link: `ln -s dotfiles/task ~/.config/task`


## Wezterm
Basic config from using the [docs](https://wezterm.org/config/files.html#configuration-overrides)  

Link: `ln -s dotfiles/wezterm ~/.config/wezterm`
