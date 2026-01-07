-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--
-- vim.api.nvim_set_keymap("n", "<C-6>", "\\", { noremap = true })
-- -- Move current tab to the left
-- vim.api.nvim_set_keymap("n", "<leader><", ":-tabmove<CR>", { noremap = true, silent = true })

-- Move current tab to the right
-- vim.api.nvim_set_keymap("n", "<leader>>", ":+tabmove<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "H", "<Cmd>bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "L", "<Cmd>bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Space>", "<Cmd>b#<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>j", "<Cmd>BufferMovePrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<Cmd>BufferMoveNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<Cmd>FzfLua lsp_references<CR>", { noremap = true, silent = true })

-- Keep the function local
local function toggle_statusbar()
  if vim.o.laststatus == 0 then
    vim.o.laststatus = 2
  else
    vim.o.laststatus = 0
  end
end

-- Use a Lua callback in the keybinding
vim.api.nvim_set_keymap("n", "<leader>h", "", {
  noremap = true,
  silent = true,
  callback = toggle_statusbar,
})
