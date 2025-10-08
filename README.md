# Dotfiles

Repo to hold my dotfiles so that I can easily sync them between computers.

### Termux
When linking on termux, the full path to the dotfiles folder must be used.

ie: `/data/data/com.termux/files/home`


## Vim

Vimrc made from piecing together options I've had throughout the years.
For tmxu integration, use `git clone git@github.com:christoomey/vim-tmux-navigator.git ~/.config/vim/pack/plugins/start/vim-tmux-navigator`

`ln -s dotfiles/vim/vimrc ~/.vimrc`

### Installing Plugins

You no longer need a plugin manager for plugins using Vim 8+. Instead, just clone any plugins into .config/vim/pack/start and restart vim.

- [Tmux navigator](https://github.com/christoomey/vim-tmux-navigator) - Let's me move between vim and tmux panes easily
- [Vim wiki](https://github.com/vimwiki/vimwiki) - Testing this one out since `nb` is running slow on my machine. Combo with `frogmouth` for viewing.
- [Tokyo Night vim](https://github.com/ghifarit53/tokyonight-vim) - not quite the same as the nvim one, but still pretty good


## Nvim

Default config based on [Typecraft's](https://youtube.com/@typecraft_dev?si=MlLIzreirX12VZLy) videos.

Also install: `lua`, `luarocks`, `cmake`
Link: `ln -s dotfiles/nvim ~/.config/nvim`

## Tmux
Largely taken from [gikeymarcia](https://github.com/gikeymarcia/tmux-config)
Default config based on [Typecraft's](https://youtube.com/@typecraft_dev?si=MlLIzreirX12VZLy) videos.

Link: `ln -s dotfiles/tmux.conf ~/.tmux.conf`  
Plugin manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Use `<C-a>I` to install the plugins

## w3m

Mostly adapted from [Arch Wiki](https://wiki.archlinux.org/title/W3m) and [W3M Rocks](https://w3m.rocks/keymap)

Link: `ln -s dotfiles/w3m ~/.w3m`


## Taskwarrior

Link: `ln -s dotfiles/task ~/.config/task`
Vit is my preferred front end, installed with `pipx`


## Wezterm
Basic config from using the [docs](https://wezterm.org/config/files.html#configuration-overrides)  

Link: `ln -s dotfiles/wezterm ~/.config/wezterm`

### Todo:
- [x] convert everything to use .config
- [ ] shell script/make file to install everything
