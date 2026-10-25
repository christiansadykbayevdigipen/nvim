return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({})
    pcall(telescope.load_extension, "fzf")

    local b = require("telescope.builtin")
    local map = vim.keymap.set
    map("n", "<leader>ff", b.find_files, { desc = "Find files" })
    map("n", "<leader>fg", b.live_grep, { desc = "Live grep" })
    map("n", "<leader>fb", b.buffers, { desc = "Buffers" })
    map("n", "<leader>fh", b.help_tags, { desc = "Help" })
    map("n", "<leader>fr", b.oldfiles, { desc = "Recent files" })
    map("n", "<leader>fd", b.diagnostics, { desc = "Diagnostics" })
  end,
}
