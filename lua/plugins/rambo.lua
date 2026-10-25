return {
  "colomb8/rambo.nvim",
  config = function()
    require("rambo").setup({
      -- operations_key = "C", -- "C" = Ctrl for copy/paste, "M" = Alt
    })
  end,
}
