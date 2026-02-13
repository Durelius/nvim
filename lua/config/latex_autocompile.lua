vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.tex",
	callback = function(args)
		local file = args.file
		dir = vim.fn.fnamemodify(file, ":h")
		vim.fn.jobstart({
			"sh",
			"-c",
			"latexmk -pdf " .. vim.fn.shellescape(args.file) .. " && latexmk -c " .. vim.fn.shellescape(args.file),
		}, { cwd = dir, detach = true })
	end,
})
