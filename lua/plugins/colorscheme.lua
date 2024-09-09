return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "italic",
            -- types = "bold",
          },
        },
      })
      -- vim.cmd("colorscheme github_dark")
    end,
  },
  { "Biscuit-Theme/nvim" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "slugbyte/lackluster.nvim" },
  { "sho-87/kanagawa-paper.nvim" },
  { "mstcl/ivory" },
  { "Verf/deepwhite.nvim" },
  { "javiorfo/nvim-nyctophilia" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "vague2k/vague.nvim" },
  { "TheNiteCoder/mountaineer.vim" },
  { "nordtheme/vim" },
  { "ntk148v/komau.vim" },
  { "zenbones-theme/zenbones.nvim" },
  { "crispybaccoon/aki" },
  { "bgwdotdev/gleam-theme-nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "p00f/alabaster.nvim" },
  { "ayu-theme/ayu-vim" },
  { "kihachi2000/yash.nvim" },
  { "gmr458/cold.nvim" },
  { "daschw/leaf.nvim" },
  { "shelmangroup/dieter.nvim" },
  { "Mofiqul/adwaita.nvim" },
  { "gaelph/nano.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "no-clown-fiesta",
    },
  },
}
