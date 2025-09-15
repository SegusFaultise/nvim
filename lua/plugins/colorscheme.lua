return {
	{ "folke/tokyonight.nvim" },

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
			table.insert(opts.sections.lualine_x, {

				function()
					return "😄"
				end,
			})
		end,
	},
}
