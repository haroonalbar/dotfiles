-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- -- auto zen on md and txt
-- vim.cmd("autocmd VimEnter *.md,*.txt :ZenMode")
--
-- vim.api.nvim_create_autocmd({ "VimEnter", "BufReadPost" }, {
--   pattern = { "*.md", "*.txt" },
--   callback = function()
--     local zen_mode = require("zen-mode")
--
--     zen_mode.open()
--   end,
-- })
