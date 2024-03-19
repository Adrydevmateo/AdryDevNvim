return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local ls = require("null-ls")
			local bi = ls.builtins

			ls.setup({
				sources = {
					bi.formatting.stylua,
				},
			})
		end,
	},
}
