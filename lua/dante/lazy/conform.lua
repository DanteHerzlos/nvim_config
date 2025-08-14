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
			default_format_opts = {
				timeout_ms = 3000,
				async = false, -- not recommended to change
				quiet = false, -- not recommended to change
				lsp_format = "fallback", -- not recommended to change
			},
			format_on_save = {
				lsp_format ="prettier",
				timeout_ms = 500,
			},
			formatters_by_ft = {
				lua = { "stylua", lsp_format = "fallback" },
        json = { lsp_format = "prettier" },
				javascript = { lsp_format = "fallback" },
				typescript = { lsp_format = "fallback" },
        typescriptreact = { lsp_format = "fallback" },
        javascriptreact = { lsp_format = "fallback" },
        css = { lsp_format = "prettier" },
				python = { lsp_format = "fallback" },
			},
		}
		return opts
	end,
}
