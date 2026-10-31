return {
  "RaafatTurki/hex.nvim",
  lazy = false, -- needs to load at startup so it can detect binary files on open
  opts = {},
  keys = {
    { "<leader>H", "<cmd>HexToggle<CR>", desc = "Toggle hex view" },
  },
}
