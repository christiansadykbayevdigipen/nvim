return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local langs = {"lua", "vim", "vimdoc", "bash", "json", "yaml", "markdown", "python", "javascript", "typescript", "html", "css", "c", "cpp", "asm" }
		require("nvim-treesitter").install(langs)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
			if pcall(vim.treesitter.start, args.buf) then
				vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end
		end,
		})
	end,
}
