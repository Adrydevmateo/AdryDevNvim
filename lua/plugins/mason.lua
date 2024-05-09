local masonOpts = {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
}

local masonLspOpts = {
	ensure_installed = { "lua_ls", "emmet_language_server" },
}

return {
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup(masonOpts)
			require("mason-lspconfig").setup(masonLspOpts)
			local lsp = require("lspconfig")

			-- Configurations -->
			-- Emmet Language Server
			lsp.emmet_language_server.setup({
				filetypes = { "css", "html" },
			})
			-- Configurations --<
		end,
	},
}
