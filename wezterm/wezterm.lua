-- Wezterm API
local wezterm = require 'wezterm'

-- Config holder
local config = wezterm.config_builder()

-- Config
config.color_scheme = 'Tokyo Night'
config.font = wezterm.font('Hack Nerd Font')
config.font_size = 12.0
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "None"

return config
