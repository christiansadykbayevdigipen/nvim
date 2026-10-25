return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>t", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
    { "<leader>T", "<cmd>NvimTreeFindFile<CR>", desc = "Reveal current file in tree" },
  },
  opts = {
    hijack_directories = { enable = false },
    view = { width = 35 },
    renderer = { group_empty = true },
    filters = { dotfiles = false },
    update_focused_file = { enable = true },
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")
      api.config.mappings.default_on_attach(bufnr) -- keep the default keys

      -- Right-click: move the cursor to the clicked line, then create a file/folder
      vim.keymap.set(
        "n",
        "<RightMouse>",
        "<LeftMouse><Cmd>lua require('nvim-tree.api').fs.create()<CR>",
        { buffer = bufnr, silent = true, nowait = true, desc = "Create file/folder" }
      )
    end,
  },
}
