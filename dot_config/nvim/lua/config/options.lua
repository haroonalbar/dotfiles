-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.wrap = true
vim.wo.relativenumber = false
vim.wo.number = true

-- make ctr+c behave like escape
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", { noremap = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- vim.diagnostic.disable(0) -- 0 refers to the current buffer
    vim.diagnostic.enable(false)
  end,
})

-- Ensure termguicolors is enabled if not already
vim.opt.termguicolors = true

-- Set a keymap to toggle oil.nvim
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "changelog",
--   callback = function()
--     vim.keymap.set("n", "o", function()
--       require("oil").open()
--     end, { buffer = true, desc = "Open Oil" })
--   end,
-- })

-- changelog disable leader o
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "changelog",
--   callback = function()
--     vim.keymap.del("n", "o", { buffer = true }) -- Remove the 'o' mapping in ChangeLog
--   end,
-- })
