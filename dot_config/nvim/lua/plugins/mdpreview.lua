return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && deno install && deno compile --output bin/markdown-preview-macos-arm64 index.js",
    -- init = function()
    --   vim.g.mkdp_filetypes = { "markdown" }
    -- end,
  },
}
