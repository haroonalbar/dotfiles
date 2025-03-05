return {
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd("colorscheme miasma")
    end,
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      -- vim.cmd([[colorscheme aura-dark]])
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      -- vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    config = function()
      -- hard | medium | soft
      vim.g.everforest_background = "hard"
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      -- vim.g.everforest_enable_italic = true
      -- vim.g.everforest_colors_override = {
      --   bg_dim = "#121010", -- sidebars
      --   bg0 = "#121010", -- bg
      --   bg2 = "#121010", -- terminal
      -- }
      vim.cmd("colorscheme everforest")
    end,
  },
}
