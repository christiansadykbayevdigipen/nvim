return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<C-t>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal" },
  },
  opts = {
    direction = "horizontal",
    size = 15,
    shade_terminals = false,
    persist_size = true,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Terminal normal mode" })
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
  end,
}
