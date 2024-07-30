-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("set clipboard=unnamedplus")
vim.cmd("set background=dark")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>v", ":lua require('dataframes').show_df()<CR>")

require("github-theme").setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "italic",
      types = "bold",
    },
  },
})

local colors = {
  bg = "#171717",
  fg = "#D0D0D0",
  normal_bg = "#417d41",
  normal_b = "#353535",
  normal_c = "#555555",
  insert = "#c77e30",
  visual = "#66315e",
  command = "#a83619",
}

local noclownfiesta_lualine = {
  normal = {
    a = { fg = colors.bg, bg = colors.normal_bg, gui = "bold" },
    b = { fg = colors.fg, bg = colors.normal_b },
    c = { fg = colors.fg, bg = colors.bg },
  },
  insert = { a = { fg = colors.bg, bg = colors.insert, gui = "bold" } },
  visual = { a = { fg = colors.fg, bg = colors.visual, gui = "bold" } },
  command = { a = { fg = colors.fg, bg = colors.command, gui = "bold" } },
  replace = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
}

require("lualine").setup({
  options = { theme = noclownfiesta_lualine },
})
