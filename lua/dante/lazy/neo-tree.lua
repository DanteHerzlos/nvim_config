-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
  lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		{
			"s1n7ax/nvim-window-picker",
			opts = {
				selection_chars = "ABFJDKSLA;CMRUEIWOQP",
				highlights = {
					enabled = true,
					statusline = {
						unfocused = {
							bg = "#4493C8",
						},
					},
				},
			},
		},
	},
	keys = {
		{
			"<leader>pv",
			function()
				require("neo-tree.command").execute({ toggle = true })
			end,
			desc = "Explorer NeoTree (Root Dir)",
		},
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_by_name = {
						"node_modules",
					},
				},
			},
			window = {
				width = 30,
				mappings = {
					["<C-]>"] = "set_root",
				},
			},
		})
	end,
}
