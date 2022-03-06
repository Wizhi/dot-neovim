vim.wo.relativenumber = true

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.fn.mkdir(vim.fn.expand("<afile>:p:h"), "p")
	end,
})
