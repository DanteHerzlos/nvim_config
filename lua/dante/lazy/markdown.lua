return {
	"iamcco/markdown-preview.nvim",
	dependencies = {
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = function()
		require("lazy").load({ plugins = { "markdown-preview.nvim" } })
		vim.fn["mkdp#util#install"]()
	end,
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
}
