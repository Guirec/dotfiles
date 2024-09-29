-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Config choices

config.font = wezterm.font "JetBrains Mono"
config.font_size = 14.0
config.color_scheme = "Catppuccin Mocha"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = "1.5cell",
	right = "1.5cell",
	top = "0cell",
	bottom = "0.5cell",
}
config.initial_cols = 130
config.initial_rows = 38
config.window_close_confirmation = "NeverPrompt"
config.keys = {
	{
		key = '|',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = '}',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'W',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.CloseCurrentPane { confirm = false },
	},
	{
		key = 'LeftArrow',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Left',
	},
	{
		key = 'RightArrow',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Right',
	},
	{
		key = 'UpArrow',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Up',
	},
	{
		key = 'DownArrow',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Down',
	},
}

-- and finally, return the configuration to wezterm
return config
