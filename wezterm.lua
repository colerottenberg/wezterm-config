local wezterm = require("wezterm")
-- local ssh_domains = require("extra.ssh")

config = {
	-- font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular" }),
	font = wezterm.font("IosevkaTerm Nerd Font", { weight = "Bold" }),
	font_size = 15.0,
	color_scheme = "Catppuccin Mocha",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 2,
		right = 2,
		top = 2,
		bottom = 2,
	},
	enable_scroll_bar = true,
	scrollback_lines = 3500,
	-- Turn Command to Contol on passthrough
	keys = {
		{ key = "q", mods = "CTRL|SHIFT", action = wezterm.action.QuitApplication },
		{ key = "f", mods = "CTRL|SHIFT", action = wezterm.action.ToggleFullScreen },
		{ key = "p", mods = "CTRL|SHIFT", action = wezterm.action.ActivateCommandPalette },
		{ key = "t", mods = "CTRL",       action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL",       action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "v", mods = "CTRL",       action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},
	-- ssh_domains = ssh_domains,
}

return config
