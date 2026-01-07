return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "gofmt", "goimport" }, -- Uses the system-wide `gofmt`
    },
    -- Optional: Ensure `gofmt` is found in your system PATH
    formatters = {
      gofmt = {
        command = "gofmt",
      },
      goimports = {
        command = "goimports", -- Ensure `goimports` is installed
      },
      -- golines = {
      --   command = "golines",
      --   args = { "--max-len=120", "--base-formatter=gofmt" },
      -- },
    },
  },
}
