return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format()
			end,
			mode = { "n", "v" },
			desc = "Format Injected Langs",
		},
	},
	opts = function()
		local plugin = require("lazy.core.config").plugins["conform.nvim"]
		local opts = {
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
			formatters_by_ft = {
				lua = { "stylua", lsp_format = "fallback" },
				javascript = { "prettier", lsp_format = "fallback" },
			},
		}
		return opts
	end,
}
