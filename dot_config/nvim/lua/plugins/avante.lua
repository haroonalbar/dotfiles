return {}
-- return {
--   {
--     "yetone/avante.nvim",
--     event = "VeryLazy",
--     lazy = false,
--     opts = {
--       -- add any opts here
--       ---@alias Provider "openai" | "claude" | "azure" | "cohere" | [string]
--       -- provider = "claude", -- Only recommend using Claude
--       provider = "openai",
--       -- claude = {
--       --   endpoint = "https://api.anthropic.com",
--       --   model = "claude-3-5-sonnet-20240620",
--       --   temperature = 0,
--       --   max_tokens = 4096,
--       -- },
--       mappings = {
--         --- @class AvanteConflictMappings
--         diff = {
--           ours = "co",
--           theirs = "ct",
--           all_theirs = "ca",
--           none = "c0",
--           both = "cb",
--           cursor = "cc",
--           next = "]x",
--           prev = "[x",
--         },
--         jump = {
--           next = "]]",
--           prev = "[[",
--         },
--         submit = {
--           normal = "<CR>",
--           insert = "<C-s>",
--         },
--       },
--       hints = { enabled = true },
--       windows = {
--         wrap = true, -- similar to vim.o.wrap
--         width = 30, -- default % based on available width
--         sidebar_header = {
--           align = "center", -- left, center, right for title
--           rounded = true,
--         },
--       },
--       highlights = {
--         ---@type AvanteConflictHighlights
--         diff = {
--           current = "DiffText",
--           incoming = "DiffAdd",
--         },
--       },
--       --- @class AvanteConflictUserConfig
--       diff = {
--         debug = false,
--         autojump = true,
--         ---@type string | fun(): any
--         list_opener = "copen",
--       },
--     },
--     keys = {
--       {
--         "<leader>ha",
--         function()
--           require("avante.api").ask()
--         end,
--         desc = "avante: ask",
--         mode = { "n", "v" },
--       },
--       {
--         "<leader>hr",
--         function()
--           require("avante.api").refresh()
--         end,
--         desc = "avante: refresh",
--       },
--       {
--         "<leader>he",
--         function()
--           require("avante.api").edit()
--         end,
--         desc = "avante: edit",
--         mode = "v",
--       },
--     },
--     dependencies = {
--       "stevearc/dressing.nvim",
--       "nvim-lua/plenary.nvim",
--       "MunifTanjim/nui.nvim",
--       --- The below dependencies are optional,
--       "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
--       {
--         -- support for image pasting
--         "HakonHarnes/img-clip.nvim",
--         event = "VeryLazy",
--         opts = {
--           -- recommended settings
--           default = {
--             embed_image_as_base64 = false,
--             prompt_for_file_name = false,
--             drag_and_drop = {
--               insert_mode = true,
--             },
--             -- required for Windows users
--             -- use_absolute_path = true,
--           },
--         },
--       },
--       {
--         -- Make sure to setup it properly if you have lazy=true
--         "MeanderingProgrammer/render-markdown.nvim",
--         opts = {
--           file_types = { "markdown", "Avante" },
--         },
--         ft = { "markdown", "Avante" },
--       },
--     },
--   },
-- }
