return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>z",
      function()
        require("snacks").zen()
        Snacks.dim.disable()
      end,
      desc = "Toggle Zen Mode",
    },
  },
}
