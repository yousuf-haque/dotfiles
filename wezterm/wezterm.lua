local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("IosevkaTerm Nerd Font Mono")
config.color_scheme = "Monokai Pro (Gogh)"
config.font_size = 16.0
config.window_frame = {
	font_size = 16.0,
	font = wezterm.font("IosevkaTerm Nerd Font Mono"),
}
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
return config
