return {
  'stevearc/oil.nvim',
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = {
          "actions.select",
          opts = { vertical = true },
          desc = "Open the entry in a vertical split",
        },
        ["<C-h>"] = {
          "actions.select",
          opts = { horizontal = true },
          desc = "Open the entry in a horizontal split",
        },
        ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
        ["<C-p>"] = "actions.preview",
        ["q"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
        ["GS"] = "ACTIONS.CHANGE_SORT",
        ["GX"] = "ACTIONS.OPEN_EXTERNAL",
        ["G."] = "ACTIONS.TOGGLE_HIDDEN",
        ["G\\"] = "ACTIONS.TOGGLE_TRASH",
      },
      FLOAT = {
        PADDING = 8,
        BORDER = "ROUNDED",
      },
    })
  end,
}
