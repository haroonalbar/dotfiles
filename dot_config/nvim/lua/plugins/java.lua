-- File: lua/plugins/jdtls.lua
return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    -- config = function()
    --   local jdtls = require("jdtls")
    --   local root_dir = jdtls.setup.find_root({ "gradlew", "pom.xml", "build.gradle" })
    --   if root_dir then
    --     jdtls.start_or_attach({
    --       cmd = { "jdtls" },
    --       root_dir = root_dir,
    --     })
    --   end
    -- end,
  },
}
