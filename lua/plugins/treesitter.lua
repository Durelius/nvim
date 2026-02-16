return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "cpp", "go", "typescript", "zig" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
