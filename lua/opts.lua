-- General settings
vim.cmd("set expandtab")
vim.cmd("set undofile")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cmdheight=0")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=8")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Leader key
vim.g.mapleader = " "

-- Gui cursor
vim.cmd("set guicursor=n-v-c:block-blinkon1,i-ci:ver25")

-- Visual vim keybind shifts
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Oil
vim.keymap.set("n", "<leader>N", ":Oil<CR>")
vim.keymap.set("n", "<leader>n", ':lua require("oil").toggle_float()<CR>')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "Y", "yy")

-- autocomplete in normal text
vim.keymap.set("i", "<C-f>", "<C-x><C-f>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-n>", "<C-x><C-n>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<C-x><C-l>", { noremap = true, silent = true })

-- spell check
vim.keymap.set("n", "<leader>ll", ":setlocal spell spelllang=en_us<CR>")

-- see error
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- go to errors
vim.keymap.set("n", "[e", vim.diagnostic.goto_next)
vim.keymap.set("n", "]e", vim.diagnostic.goto_next)

-- disable default errors
vim.diagnostic.config({
    virtual_text = false,
})

-- LSP settings
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

-- None-ls settings
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})

-- Undotree settings
vim.g.undotree_SplitWidth = 30
vim.g.undotree_DiffpanelHeight = 10
vim.g.undotree_SetFocusWhenToggle = 1
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

-- Char line
local colorcolumn_enabled = false -- Initial state

function ToggleColorColumn()
    if colorcolumn_enabled then
        vim.opt.colorcolumn = "80" -- Disable the color column
    else
        vim.opt.colorcolumn = "" -- Enable it at column 80
    end
    colorcolumn_enabled = not colorcolumn_enabled -- Toggle the state
end
vim.keymap.set("n", "<Leader>cc", ToggleColorColumn, { noremap = true, silent = true })
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 0, bg = "#1e1e1e" })

-- Copy and Paste
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor


vim.api.nvim_set_hl(0, "TSKeyword", { fg = "#FF5733", bold = true }) -- Keywords like 'class', 'def'
vim.api.nvim_set_hl(0, "TSFunction", { fg = "#FFD700", bold = true }) -- Functions
vim.api.nvim_set_hl(0, "TSString", { fg = "#ADFF2F" }) -- Strings
vim.api.nvim_set_hl(0, "TSVariable", { fg = "#87CEFA" }) -- Variables

