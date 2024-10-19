return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    -- keys = {
    --   { "<leader>lr", "<cmd>Leet run<cr>", desc = "Run Leet" },
    --   { "<leader>li", "<cmd>Leet info<cr>", desc = "Info Leet" },
    --   { "<leader>ll", "<cmd>Leet lang<cr>", desc = "Language Leet" },
    -- },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "golang",
    },
  },
}
