local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Default directory
config.default_cwd = "~"

-- Font configuration
config.font = wezterm.font("JetBrains Mono")
-- config.font = wezterm.font("IsovekaTerm")
config.line_height = 1
config.font_size = 23

-- Custom default window pane size
-- config.initial_rows = 157
-- config.initial_rows = 50
config.initial_cols = 134
config.initial_rows = 37

-- Window pane setting
config.window_background_opacity = 0.90
config.macos_window_background_blur = 10
config.window_decorations = "NONE"
config.adjust_window_size_when_changing_font_size = false

-- Tab barconfig
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false

-- Set transparent tab bar colors
config.colors = {
    tab_bar = {
        background = "none", -- Makes the tab bar background transparent

        -- Active tab style
        active_tab = {
            bg_color = "none", -- Transparent background for active tab
            fg_color = "#ffffff", -- White text for active tab
            italic = false,
        },

        -- Inactive tab style
        inactive_tab = {
            bg_color = "none", -- Transparent background for inactive tab
            fg_color = "#808080", -- Gray text for inactive tabs
            italic = false,
        },

        -- Style for the new tab button
        new_tab = {
            bg_color = "none", -- Transparent background
            fg_color = "#808080", -- Gray text
        },
        new_tab_hover = {
            bg_color = "none", -- Transparent background
            fg_color = "#ffffff", -- White text when hovered
        },
    },
}

-- Graphical settings
config.front_end = "OpenGL"
config.animation_fps = 1

-- Colorscheme
config.color_scheme = "VagueAdjusted"
config.char_select_bg_color = "#000000"

-- Define the VagueAdjusted colorscheme
config.color_schemes = {
  ["VagueAdjusted"] = {
    foreground = "#cdcdcd", -- Foreground text
    background = "#18191a", -- Background
    cursor_bg = "#cdcdcd",
    cursor_border = "#cdcdcd",
    cursor_fg = "#18191a",
    selection_bg = "#465362", -- Visual selection
    selection_fg = "#cdcdcd",

    -- Split lines
    split = "#878787", -- FloatBorder-like

    -- Annotations
    ansi = {
      "#4e4f5c", -- Black (cool, subtle for comments)
      "#d2788c", -- Red (soft, purplish-red for errors)
      "#deb896", -- Green (muted gold for strings)
      "#d2a374", -- Yellow (warm gold for numbers)
      "#7894ab", -- Blue (cool, muted for keywords)
      "#be8c8c", -- Magenta (soft purple for functions)
      "#96a3b2", -- Cyan (cool gray-blue for operators)
      "#cdcdcd", -- White (neutral foreground)
    },
    brights = {
      "#646477", -- Bright Black (slightly enhanced for comments)
      "#e28ca0", -- Bright Red (vibrant purplish-red for errors)
      "#deb896", -- Bright Green (golden strings)
      "#d2a374", -- Bright Yellow (warm gold for numbers)
      "#8ca0dc", -- Bright Blue (cool, vibrant blue for keywords)
      "#be8c8c", -- Bright Magenta (soft purple for functions)
      "#96a3b2", -- Bright Cyan (vibrant gray-blue for operators)
      "#e6e6e6", -- Bright White (brighter foreground)
    },
  }}

return config

