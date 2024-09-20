local wezterm = require 'wezterm'
local act = wezterm.action

local config = {
  font = wezterm.font('FiraMonoNerdFont', { weight = 'Medium' }),
  font_size = 10.5,
  hide_tab_bar_if_only_one_tab = true,
  show_new_tab_button_in_tab_bar = false,
  enable_scroll_bar = true,
  adjust_window_size_when_changing_font_size = false,
  color_scheme = 'Oxocarbon Dark',
  window_close_confirmation = 'NeverPrompt',
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,
  default_cursor_style = 'SteadyUnderline',
  window_padding = {
    right = 8,
  },
  disable_default_key_bindings = true,
}

config.keys = {
  { key = 't', mods = 'CTRL|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = act.CloseCurrentTab { confirm = false } },
  { key = 'x', mods = 'CTRL|SHIFT', action = act.CloseCurrentPane { confirm = false } },
  { key = 'h', mods = 'CTRL|ALT', action = act.MoveTabRelative(-1) },
  { key = 'l', mods = 'CTRL|ALT', action = act.MoveTabRelative(1) },
  { key = 'f', mods = 'CTRL|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'd', mods = 'CTRL|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'h', mods = 'SHIFT|ALT', action = act.ActivatePaneDirection 'Left' },
  { key = 'l', mods = 'SHIFT|ALT', action = act.ActivatePaneDirection 'Right' },
  { key = 'j', mods = 'SHIFT|ALT', action = act.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'SHIFT|ALT', action = act.ActivatePaneDirection 'Up' },

  {
    key = 'h', mods = 'SHIFT|CTRL|ALT',
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'l', mods = 'SHIFT|CTRL|ALT',
    action = act.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'j', mods = 'SHIFT|CTRL|ALT',
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'k', mods = 'SHIFT|CTRL|ALT',
    action = act.AdjustPaneSize { 'Up', 5 },
  },

  { key = '=', mods = 'CTRL', action = act.IncreaseFontSize },
  { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
  { key = '0', mods = 'CTRL', action = act.ResetFontSize },
  {
    key = 'H', mods = 'SHIFT|CTRL',
    action = act.Search { CaseInSensitiveString = '' },
  },
  { key = 'h', mods = 'CMD|ALT', action = act.ActivateTabRelative(-1) },
  { key = 'l', mods = 'CMD|ALT', action = act.ActivateTabRelative(1) },
  { key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
  { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
  { key = 'Insert', mods = 'SHIFT', action = act.PasteFrom 'PrimarySelection' },
}

for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = act.ActivateTab(i - 1),
  })
end

config.window_frame = {
  font = wezterm.font { family = 'SpaceMonoNerdFont', weight = 'Bold' },
  font_size = 10,
}

return config
