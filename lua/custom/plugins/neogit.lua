return {
	"NeogitOrg/neogit",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Neogit",
	config = function()
		local neogit = require("neogit")

		neogit.setup({
			integrations = {
				diffview = true, -- if you're using 'sindrets/diffview.nvim'
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>gg", function()
			neogit.open()
		end, { desc = "Open Neogit" })

		vim.keymap.set("n", "<leader>gc", function()
			neogit.open({ kind = "split", section = "commit" })
		end, { desc = "Open Neogit (Commit View)" })
	end,
	keys = { "<leader>gg", "<leader>gc" },
}
