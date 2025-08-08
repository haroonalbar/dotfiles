return {
  "ibhagwan/fzf-lua",
  -- Optional: Ensure fzf-lua is loaded after overriding
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup({
      -- Override the "files" command to change the keymap
      files = {
        -- Keybindings for the fzf-lua prompt
        actions = {
          -- Toggle hidden files with Ctrl+i
          ["ctrl-i"] = require("fzf-lua.actions").toggle_hidden,
        },
        -- Optionally disable the default Alt+h binding
        -- (if it conflicts or you want to remove it)
        -- [[ Add this if needed ]]
        -- fzf_args = function()
        --   return "--bind=alt-h:abort"  -- Disable Alt+h
        -- end,
      },
    })
  end,
}
