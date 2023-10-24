return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup({
			-- prompt for return type
			prompt_func_return_type = {
				go = true,
				cpp = true,
				c = true,
				java = true,
			},
			-- prompt for function parameters
			prompt_func_param_type = {
				go = true,
				cpp = true,
				c = true,
				java = true,
			},
		})
		vim.keymap.set("n", '<leader>rr', vim.lsp.buf.rename, { desc = '[r]ename' })
		vim.keymap.set("x", "<leader>re", function() require('refactoring').refactor('Extract Function') end,
			{ desc = '[e]xtract Function ' })
		vim.keymap.set("x", "<leader>rf",
			function() require('refactoring').refactor('Extract Function To File') end,
			{ desc = 'Extract [f]unction To File' })
		-- Extract function supports only visual mode
		vim.keymap.set("x", "<leader>rv", function() require('refactoring').refactor('Extract Variable') end,
			{ desc = 'Extract [v]ariable' })
		-- Extract variable supports only visual mode
		vim.keymap.set("n", "<leader>rI", function() require('refactoring').refactor('Inline Function') end,
			{ desc = "[I]nline Function" })
		-- Inline func supports only normal
		vim.keymap.set({ "n", "x" }, "<leader>ri",
			function() require('refactoring').refactor('Inline Variable') end, { desc = "[i]nline Variable" })
		-- Inline var supports both normal and visual mode
		vim.keymap.set("n", "<leader>rb", function() require('refactoring').refactor('Extract Block') end,
			{ desc = 'Extract [b]lock' })
		vim.keymap.set("n", "<leader>rbf",
			function() require('refactoring').refactor('Extract Block To File') end,
			{ desc = 'Extract block to [f]ile' })
		-- Extract block supports only normal mode

		-- You can also use below = true here to to change the position of the printf
		-- statement (or set two remaps for either one). This remap must be made in normal mode.
		vim.keymap.set(
			"n",
			"<leader>rp",
			function() require('refactoring').debug.printf({ below = false }) end,
			{ desc = 'Insert Debug [p]rint below' }
		)

		-- Print var

		vim.keymap.set({ "x", "n" }, "<leader>rv", function() require('refactoring').debug.print_var() end,
			{ desc = 'Insert debug print [v]ariable value' })
		-- Supports both visual and normal mode

		vim.keymap.set("n", "<leader>rc", function() require('refactoring').debug.cleanup({}) end,
			{ desc = '[c]leanup debug print' })
		-- Supports only normal mode
	end,
}
