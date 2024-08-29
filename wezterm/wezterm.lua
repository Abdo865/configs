local wezterm = require 'wezterm';

return {
  color_scheme = "Kibble",
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  font = wezterm.font('Cascadia Code NF'),
  font_size = 12.0,
  keys = {
    -- Horizontal split with `Alt+h`
    {
      key = 'h',
      mods = 'ALT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
    },
    -- Vertical split with `Alt+v`
    {
      key = 'v',
      mods = 'ALT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
    },
    {
      key = 'w',
      mods = 'ALT',
      action = wezterm.action.CloseCurrentPane { confirm = false }
    },
    -- Move to the left pane with `ALT+LeftArrow`
    {
      key = 'LeftArrow',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection 'Left'
    },
    -- Move to the right pane with `ALT+RightArrow`
    {
      key = 'RightArrow',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection 'Right'
    },
    -- Move to the up pane with `ALT+UpArrow`
    {
      key = 'UpArrow',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection 'Up'
    },
    -- Move to the down pane with `ALT+DownArrow`
    {
      key = 'DownArrow',
      mods = 'ALT',
      action = wezterm.action.ActivatePaneDirection 'Down'
    },
  },
}
