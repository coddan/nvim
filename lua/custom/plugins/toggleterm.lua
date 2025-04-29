return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
		})

		local Terminal = require("toggleterm.terminal").Terminal
		local float_term = Terminal:new({ direction = "float", hidden = true })

		vim.keymap.set("n", "<leader>tf", function()
			float_term:toggle()
		end, { desc = "Toggle floating terminal" })
	end,
	keys = { "<leader>tf", "<c-\\>" },
}
