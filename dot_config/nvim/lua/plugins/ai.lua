return {
  {
    "yetone/avante.nvim",
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- ⚠️ must add this setting\! \! \!
    build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"\! Never\!
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      -- Provider configuration
      provider = "auggie", -- Set auggie as default provider
      auto_suggestions_provider = "auggie", -- Use auggie for auto-suggestions

      -- Behavior settings
      behaviour = {
        auto_suggestions = false, -- Disable auto-suggestions
        -- auto_set_highlight_group = true,
        -- auto_set_keymaps = true,
        -- auto_apply_diff_after_generation = false,
        -- support_paste_from_clipboard = false,
      },

      -- Window configuration
      windows = {
        position = "right", -- Position of the sidebar
        wrap = true, -- Enable text wrapping
        width = 50, -- Width as percentage of available space
        sidebar_header = {
          align = "center", -- Center align the header
          rounded = true,
        },
      },

      -- Key mappings
      mappings = {
        diff = {
          ours = "co",
          theirs = "ct",
          all_theirs = "ca",
          both = "cb",
          cursor = "cc",
          next = "]x",
          prev = "[x",
        },
        suggestion = {
          accept = "<M-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
        jump = {
          next = "]]",
          prev = "[[",
        },
        submit = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        sidebar = {
          apply_all = "A",
          apply_cursor = "a",
          switch_windows = "<Tab>",
          reverse_switch_windows = "<S-Tab>",
        },
      },

      -- Provider configurations
      providers = {
        auggie = {
          -- Use ACP (Agent Client Protocol) for auggie
          __acp = true,
        },
        opencode = {
          -- Use ACP (Agent Client Protocol) for opencode
          __acp = true,
        },
        claude = {
          endpoint = "https://api.anthropic.com",
          model = "claude-3-5-sonnet-20241022",
          api_key_name = "ANTHROPIC_API_KEY",
          timeout = 30000,
          temperature = 0,
          max_tokens = 4096,
        },
      },

      -- ACP provider configurations
      acp_providers = {
        auggie = {
          command = "auggie",
          args = { "--acp" }, -- Use ACP mode
        },

        ["opencode"] = {
          command = "opencode",
          args = { "acp" },
          -- Uses AWS Bedrock via "aws sso login" - no API key needed
        },
      },

      -- Enable hints
      hints = { enabled = true },

      -- Diff configuration
      diff = {
        autojump = true,
        list_opener = "copen",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-mini/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "stevearc/dressing.nvim", -- for input provider dressing
      "folke/snacks.nvim", -- for input provider snacks
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = {
  --     "Kaiser-Yang/blink-cmp-avante",
  --     -- ... Other dependencies
  --   },
  --   opts = {
  --     sources = {
  --       -- Add 'avante' to the list
  --       default = { "avante", "lsp", "path", "snippets", "buffer" },
  --       providers = {
  --         avante = {
  --           module = "blink-cmp-avante",
  --           name = "Avante",
  --           opts = {
  --             -- options for blink-cmp-avante
  --           },
  --         },
  --       },
  --     },
  --     snippets = {
  --       preset = "luasnip",
  --     },
  --   },
  -- },
}
