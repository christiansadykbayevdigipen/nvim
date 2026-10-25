return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000, -- load before other plugins so the theme applies first
  config = function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
}
