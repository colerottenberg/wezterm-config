local wezterm = require 'wezterm'
local ssh_domains = require('extra.ssh')

config = {
  font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular" }),
  font_size = 12.0,
  color_scheme = "Catppuccin Macchiato",
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
  },
  enable_scroll_bar = true,
  scrollback_lines = 3500,
  default_prog = { "/usr/bin/zsh" },
  keys = {
    { key = "t", mods = "CTRL",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "t", mods = "CTRL|SHIFT", action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "w", mods = "CTRL",       action = wezterm.action { CloseCurrentTab = { confirm = true } } },
    { key = "c", mods = "CTRL|SHIFT", action = wezterm.action { CopyTo = "Clipboard" } },
    { key = "v", mods = "CTRL",       action = wezterm.action { PasteFrom = "Clipboard" } },
  },
  ssh_domains = ssh_domains,
}

return config
