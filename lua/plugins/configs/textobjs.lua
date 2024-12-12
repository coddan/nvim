return {
		"chrisgrieser/nvim-various-textobjs",
		config = function()
			require("various-textobjs").setup({
                keymaps = {
				-- use suggested keymaps (see README)
				    useDefaults = true,

				-- disable some default keymaps, e.g. { "ai", "ii" }
				    disableDefaults = {},
            },
                forwardLooking = {
                    small = 5,
                    big = 15,
            }
			})
		end,
	}
