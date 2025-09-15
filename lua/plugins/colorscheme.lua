return {
	{ "folke/tokyonight.nvim", opts = {
		transparent_background = true,
	} },

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		opts = function(_, opts)
			opts.sections.lualine_x = {
				{ "diagnostics" },
				{ "filetype" },
				{
					"LspStatus",
					cond = function()
						return require("lazyvim.util").has("nvim-lspconfig")
					end,
				},
				{
					"branch",
					icon = "",
					color = { fg = "#7a72b8" },
				},
			}
		end,
	},
}
