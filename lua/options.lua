vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--require("vscode-keys")


local map = vim.keymap.set

-- Ctrl+Backspace: delete previous word (Ctrl+H covers terminals that send it that way)
map("i", "<C-BS>", "<C-w>", { desc = "Delete word left" })
map("i", "<C-h>", "<C-w>", { desc = "Delete word left" })

-- Ctrl+Delete: delete next word
map("i", "<C-Del>", "<C-o>dw", { desc = "Delete word right" })


vim.g.clipboard = {
  name = "wl-clipboard (no cache)",
  copy = {
    ["+"] = { "wl-copy", "--type", "text/plain" },
    ["*"] = { "wl-copy", "--primary", "--type", "text/plain" },
  },
  paste = {
    ["+"] = { "wl-paste", "--no-newline" },
    ["*"] = { "wl-paste", "--no-newline", "--primary" },
  },
  cache_enabled = 0,
}

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    map("i", "<C-v>", "<C-r><C-r>+", { desc = "Paste system clipboard" })
    map("n", "<C-v>", '"+p', { desc = "Paste system clipboard" })
    -- paste over a selection (visual and select mode), then stay in insert mode
    map("x", "<C-v>", '"_c<C-r><C-r>+', { desc = "Paste over selection" })
    map("s", "<C-v>", '<C-g>"_c<C-r><C-r>+', { desc = "Paste over selection" })
  end,
})
