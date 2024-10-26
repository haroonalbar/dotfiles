return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
    opts = {
      on_open = function()
        -- vim.fn.system("tmux set-option status off")
        -- Disable Neovim status bar
        -- vim.opt.laststatus = 0
        -- Hide line numbers
        vim.opt.number = false
        vim.opt.list = false
        -- vim.opt.relativenumber = false
        -- Disable list mode (which can show special characters for whitespace)
      end,
      on_close = function()
        vim.opt.number = true
        vim.opt.list = true
        -- vim.fn.system("tmux set-option status on")
        -- vim.opt.laststatus = 2
        -- vim.opt.relativenumber = true
      end,
      -- plugins = {
      --   enabled = true,
      --   ruler = false,
      --   showcmd = false,
      --   gitsigns = true,
      --   tmux = false,
      --   kitty = { enabled = false, font = "-2" },
      -- },
    },
    -- window = {
    --   backdrop = 0, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    --   width = 1, -- width of the Zen window
    --   height = 1, -- height of the Zen window
    --   options = {
    --     signcolumn = "no", -- disable signcolumn
    --     number = false, -- disable number column
    --     relativenumber = false, -- disable relative numbers
    --     cursorline = false, -- disable cursorline
    --     cursorcolumn = false, -- disable cursor column
    --     foldcolumn = "0", -- disable fold column
    --     list = false, -- disable whitespace characters
    --     wrap = true, -- enable text wrapping
    --     linebreak = true, -- wrap long lines at characters in 'breakat'
    --     showbreak = "NONE", -- disable wrapped line indicator
    --     colorcolumn = "0", -- disable color column
    --     indentexpr = "0", -- disable automatic indentation
    --     indentopt = "0", -- disable automatic indentation options
    --   },
    -- },
  },
}
