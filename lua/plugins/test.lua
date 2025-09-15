-- plugins/test.lua
return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-jest",
			"nvim-neotest/neotest-go",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-python"),
					require("neotest-jest"),
					require("neotest-go"),
				},
			})
		end,
		keys = {
			{
				"<leader>tt",
				function()
					require("neotest").run.run()
				end,
				desc = "Run Test",
			},
			{
				"<leader>tf",
				function()
					require("neotest").run.run(vim.fn.expand("%"))
				end,
				desc = "Run File",
			},
			{
				"<leader>td",
				function()
					require("neotest").run.run({ strategy = "dap" })
				end,
				desc = "Debug Test",
			},
			{
				"<leader>ts",
				function()
					require("neotest").summary.toggle()
				end,
				desc = "Test Summary",
			},
		},
	},
}
