return {
  {
    "kyazdani42/nvim-web-devicons",
    lazy = true,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
  },
  {
    "pieces-app/plugin_neo_vim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
    },
    -- config = function()
    -- Optional: Set the host if you need to change it from the default
    -- require("pieces.config").host = "http://localhost:7253"
    -- end,
  },
}
