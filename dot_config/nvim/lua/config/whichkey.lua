local wk = require("which-key")

wk.add({
  ["gs"] = { "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", "Goto Definition in Vertical Split" },
}, { mode = "n" })
