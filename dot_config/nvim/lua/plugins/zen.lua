return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
    opts = {
      on_open = function()
        vim.opt.number = false
        vim.opt.list = false
      end,
      on_close = function()
        vim.opt.number = true
        vim.opt.list = true
      end,
    },
  },
}
