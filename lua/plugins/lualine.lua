return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.icons", "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            bg = "NONE", -- Transparent background
            fg = "#C3BAC6", -- Subtle, cool-toned foreground
            yellow = "#C5A3BF", -- Muted pastel lavender
            cyan = "#A3B8C9", -- Soft desaturated cyan
            darkblue = "#848CBF", -- Muted cool blue
            green = "#A8C0B3", -- Subtle mint green
            orange = "#D2A1C8", -- Soft pinkish-orange
            violet = "#B4A8CF", -- Gentle purple
            magenta = "#C4AEDC", -- Muted pastel magenta
            blue = "#A7B3D1", -- Cool-toned blue
            red = "#C89B9F", -- Muted rose
        }

        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = {
                    normal = {
                        a = { fg = colors.bg, bg = colors.violet, gui = 'bold' },
                        b = { fg = colors.fg, bg = "NONE" },
                        c = { fg = colors.fg, bg = "NONE" },
                    },
                    insert = {
                        a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
                    },
                    visual = {
                        a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
                    },
                    replace = {
                        a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
                    },
                    command = {
                        a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
                    },
                    inactive = {
                        a = { fg = colors.fg, bg = "NONE", gui = 'bold' },
                        b = { fg = colors.fg, bg = "NONE" },
                        c = { fg = colors.fg, bg = "NONE" },
                    },
                },
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = { 'packer', 'NvimTree' },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = { 'nvim-tree', 'fugitive' },
        }
    end,
}
