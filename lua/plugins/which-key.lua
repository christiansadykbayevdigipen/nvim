return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "find" },
      { "<leader>c", group = "cmake" },
      { "<leader>g", group = "git" },
      { "<leader>h", group = "hunks" },
    },
  },
  keys = {
    { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer keymaps" },
  },
}
