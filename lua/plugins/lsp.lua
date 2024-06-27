return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"cmake",
					"cssls",
					"html",
					"tsserver",
					"jsonls",
					"lua_ls",
					"intelephense",
					"basedpyright",
					"rust_analyzer",
					"sqlls",
					"ltex",
					"gopls",
					"htmx",
					"emmet_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			lspconfig.cmake.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})

			lspconfig.basedpyright.setup({
				capabilities = capabilities,
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

			lspconfig.sqlls.setup({
				capabilities = capabilities,
			})

			lspconfig.ltex.setup({
				capabilities = capabilities,
				settings = {
					ltex = {
						language = "en-GB",
						enabled = {
							"bibtex",
							"markdown",
							"tex",
							"restructuredtext",
							"latex",
						},
					},
				},
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			lspconfig.htmx.setup({
				capabilities = capabilities,
			})

			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- shows info about item under cursor if available
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- takes us to definition of item under cursor
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- shows possible automatic code actions
		end,
	},
}
