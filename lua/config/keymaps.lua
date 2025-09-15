return {
	-- navigation
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	-- Commenting
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = {
				line = "gcc",
				block = "gbc",
			},
			opleader = {
				line = "gc",
				block = "gb",
			},
		},
	},

	-- Surround
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		opts = {},
	},

	-- Which-key for keymap hints
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			plugins = { spelling = true },
			defaults = {
				mode = { "n", "v" },
				["g"] = { name = "+goto" },
				["<leader>c"] = { name = "+code" },
				["<leader>d"] = { name = "+debug" },
				["<leader>f"] = { name = "+file/find" },
				["<leader>g"] = { name = "+git" },
				["<leader>s"] = { name = "+search" },
				["<leader>t"] = { name = "+test" },
				["<leader>x"] = { name = "+diagnostics/quickfix" },
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)
			wk.register(opts.defaults)
		end,
	},
}
