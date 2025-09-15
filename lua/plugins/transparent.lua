return {
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		opts = {
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
				"NvimTreeNormal",
				"NormalFloat",
			},
		},
		config = function(_, opts)
			require("transparent").setup(opts)
			require("transparent").clear_prefix("lualine")
		end,
	},
}
