-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- vim.cmd("filetype plugin on")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set background=dark")

require("github-theme").setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "italic",
      types = "bold",
    },
  },
})

require("lspconfig").mojo.setup({})

-- turn off LSP highlighting
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

-- set lualine colors for no-clown-fiesta
local colors = {
  bg = "#171717",
  fg = "#D0D0D0",
  normal_bg = "#6ba55e",
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

-- local colors = {
--   bg = "#ffffff",
--   fg = "#353535",
--   normal_bg = "#6ba55e",
--   normal_b = "#cccccc",
--   normal_c = "#bbbbbb",
--   insert = "#c77e30",
--   visual = "#66315e",
--   command = "#a83619",
-- }
--
-- local githublight_lualine = {
--   normal = {
--     a = { fg = colors.bg, bg = colors.normal_bg, gui = "bold" },
--     b = { fg = colors.fg, bg = colors.normal_b },
--     c = { fg = colors.fg, bg = colors.bg },
--   },
--   insert = { a = { fg = colors.bg, bg = colors.insert, gui = "bold" } },
--   visual = { a = { fg = colors.fg, bg = colors.visual, gui = "bold" } },
--   command = { a = { fg = colors.fg, bg = colors.command, gui = "bold" } },
--   replace = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
--   inactive = {
--     a = { fg = colors.fg, bg = colors.bg },
--     b = { fg = colors.fg, bg = colors.bg },
--     c = { fg = colors.fg, bg = colors.bg },
--   },
-- }
--
-- require("lualine").setup({
--   options = { theme = githublight_lualine },
-- })
--
require("neo-tree").setup({
  filesystem = {
    window = {
      mappings = {
        ["I"] = "image_wezterm", -- " or another map
      },
    },
    commands = {
      image_wezterm = function(state)
        local node = state.tree:get_node()
        if node.type == "file" then
          require("image_preview").PreviewImage(node.path)
        end
      end,
    },
  },
})
