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
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha", -- latte, frappe, macchiato, mocha
  --       background = { -- :h background
  --         light = "latte",
  --         dark = "mocha",
  --       },
  --       -- Other configuration options...
  --     })
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "night",
  --     transparent = true,
  --     styles = {
  --       sidebars = "dark",
  --       floats = "dark",
  --     },
  --     on_colors = function(colors)
  --       colors.bg = "#1c1c1c"
  --       colors.bg_dark = "#1c1c1c" -- This affects floating windows
  --       colors.bg_float = "#1c1c1c" -- This also affects floating windows
  --       colors.bg_sidebar = "#1c1c1c" -- This affects sidebars
  --     end,
  --     on_highlights = function(hl)
  --       hl.FloatBorder = {
  --         fg = "#000000",
  --         bg = "#1c1c1c",
  --       }
  --       hl.NormalFloat = {
  --         bg = "#1c1c1c",
  --       }
  --       hl.TelescopeBorder = {
  --         fg = "#000000",
  --         bg = "#1c1c1c",
  --       }
  --     end,
  --   },
  --   config = function(_, opts)
  --     require("tokyonight").setup(opts)
  --     vim.cmd([[
  --           autocmd VimEnter * highlight FloatBorder guifg=#000000
  --           set fillchars+=vert:│
  --           set fillchars+=horiz:─
  --           set fillchars+=horizup:┴
  --           set fillchars+=horizdown:┬
  --           set fillchars+=vertleft:┤
  --           set fillchars+=vertright:├
  --           set fillchars+=verthoriz:┼
  --         ]])
  --   end,
  -- },
}
