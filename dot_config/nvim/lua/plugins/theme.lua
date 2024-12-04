return {
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
      --   bg_dim = "#1c1c1c", -- sidebars
      --   bg0 = "#1c1c1c", -- bg
      --   bg2 = "#1c1c1c", -- terminal
      -- }
      vim.cmd("colorscheme everforest")
    end,
  },
}
