local wk = require("which-key")

local leet_mappings = {
  -- {"<leader>"}
  -- ["<leader>"] = {
  --   name = "Leet",
  --   r = { "<cmd>Leet run<CR>", "Run Leet" },
  --   i = { ":Leet info<CR>", "Leet Info" },
  --   l = { ":Leet lang<CR>", "Leet Language" },
  -- },
}

wk.register(leet_mappings, { mode = "n", icon = "$" })
