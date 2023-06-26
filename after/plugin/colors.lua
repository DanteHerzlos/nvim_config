function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

--  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

--[[ 
'rose-pine'
'tokyonight'
'catppuccin'
'gruvbox' 
]]

require('rose-pine').setup({
	variant = 'moon',
  disable_italics = true,
})

require('gruvbox').setup({
  disable_italics = true,
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
})

require("catppuccin").setup({
  no_italic = true,
  background = {
    light = "latte",
    dark = "macchiato",
  },
})

ColorMyPencils('rose-pine')
