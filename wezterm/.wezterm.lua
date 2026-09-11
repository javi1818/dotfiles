-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = 'AdventureTime'

config.keys = {
    {
      key = 'LeftArrow',
      mods = 'OPT',
      action = wezterm.action.SendString '\x1bb',
    },
    {
      key = 'RightArrow',
      mods = 'OPT',
      action = wezterm.action.SendString '\x1bf',
    },
  }
-- Finally, return the configuration to wezterm:

-- Unlock 120Hz rendering (Default is 60)
config.max_fps = 120

-- Smooth out cursor animations and blinking text
config.animation_fps = 120

config.front_end = "WebGpu"

return config
