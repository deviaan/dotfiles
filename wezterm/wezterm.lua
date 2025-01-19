-- Wezterm API
local wezterm = require 'wezterm'

-- Config holder
local config = wezterm.config_builder()

-- Config
config.color_scheme = 'tokyonight_night'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14.0

return config
