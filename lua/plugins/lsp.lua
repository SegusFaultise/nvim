return {
	{ import = "lazyvim.plugins.extras.lang.typescript" },

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				pyright = {},
				tsserver = {},
			},
		},
	},

	{
		"jose-elias-alvarez/typescript.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		init = function()
			require("lazyvim.util").lsp.on_attach(function(_, buffer)
				vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
				vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
			end)
		end,
		opts = {
			server = {
				settings = {
					typescript = {
						inlayHints = {
							includeInlayParameterNameHints = "all",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = true,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					},
				},
			},
		},
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })

			opts.mapping = opts.mapping or {}
			opts.mapping["<Tab>"] = nil --
			opts.mapping["<S-Tab>"] = nil
		end,
	},
}
