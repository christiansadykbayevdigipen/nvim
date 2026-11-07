return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    -- Render in insert mode too, since your files open in insert mode.
    -- The cursor line still shows raw text so you can edit it.
    render_modes = { "n", "i", "v", "V", "c", "t" },
  },
  keys = {
    { "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", desc = "Toggle markdown rendering" },
  },
}
