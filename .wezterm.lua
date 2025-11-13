-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Define colors
config.color_schemes = {
  ['VT320 Amber'] = {
    foreground = '#FFA347',
    background = '#1A0F00',
    cursor_bg = '#FFD280',
    cursor_fg = '#1A0F00',
    cursor_border = '#FFD280',

    selection_bg = '#403020',
    selection_fg = '#FFE0A8',

    ansi = {
      '#1A0F00', -- black
      '#B35C2E', -- red
      '#A0872E', -- green (brassy)
      '#D99A3D', -- yellow
      '#996633', -- blue (bronze)
      '#BF7444', -- magenta (copper)
      '#C28A54', -- cyan (ochre)
      '#E6B879', -- white (light amber)
    },

    brights = {
      '#403020', -- bright black / dim
      '#D47A43', -- bright red
      '#C3A449', -- bright green
      '#FFB347', -- bright yellow
      '#B67A4A', -- bright blue
      '#E08C5C', -- bright magenta
      '#D5A269', -- bright cyan
      '#FFE0A8', -- bright white
    },
  },
}

-- Apply the color scheme
config.color_scheme = 'VT320 Amber'

-- Optional fine‑tuning for the “glow” feel
config.window_background_opacity = 0.98
config.text_blink_rate = 0
config.force_reverse_video_cursor = false
config.bold_brightens_ansi_colors = false

-- Terminal layout preferences
config.font = wezterm.font 'JetBrains Mono'
config.initial_cols = 120
config.initial_rows = 36
config.scrollback_lines = 3500
config.enable_scroll_bar = true

-- Finally, return the configuration to wezterm
return config
