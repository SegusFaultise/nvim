return {
	{
		"folke/trouble.nvim",
		opts = { use_diagnostic_signs = true },
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble Toggle" },
			{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
			{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
		},
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		keys = {
			{
				"<leader>fp",
				function()
					require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
				end,
				desc = "Find Plugin File",
			},
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
		},
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
				winblend = 0,
				mappings = {
					i = {
						["<C-j>"] = require("telescope.actions").move_selection_next,
						["<C-k>"] = require("telescope.actions").move_selection_previous,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		},
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension("fzf")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- LSP servers (correct package names)
				"typescript-language-server", -- Correct name for TypeScript
				"pyright", -- Python LSP
				"lua-language-server", -- Lua LSP
				"rust-analyzer", -- Rust LSP
				"gopls", -- Go LSP
				"bash-language-server", -- Bash LSP
				"html-lsp", -- HTML LSP
				"css-lsp", -- CSS LSP
				"json-lsp", -- JSON LSP
				"yaml-language-server", -- YAML LSP

				-- Formatters
				"stylua", -- Lua formatter
				"prettier", -- JavaScript/TypeScript formatter
				"black", -- Python formatter
				"isort", -- Python import sorter
				"gofumpt", -- Go formatter
				"goimports", -- Go imports organizer
				"shfmt", -- Shell formatter

				-- Linters
				"shellcheck", -- Shell linter
				"eslint-lsp", -- JavaScript/TypeScript linter
				"flake8", -- Python linter

				-- Debuggers
				"debugpy", -- Python debugger
				"js-debug-adapter", -- JavaScript debugger

				-- Utilities
				"marksman", -- Markdown LSP
			},
		},
	},

	-- Git integration
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},

	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite" },
	},
}
