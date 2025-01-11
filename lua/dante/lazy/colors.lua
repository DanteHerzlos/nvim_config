function ColorMyPencils(color)
  vim.o.termguicolors = true
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        no_italic = true,
        background = {
          light = "latte",
          dark = "macchiato",
        },
      })
      ColorMyPencils('catppuccin')
    end
  },
  {
    "rebelot/kanagawa.nvim",
    name = 'kanagawa',
    config = function()
      require('kanagawa').setup({
        theme = 'wave',
        background = {
          dark = "wave",
          light = "lotus"
        },
        functionStyle = { italic = false },
        keywordStyle = { italic = false },
      })
    end
  },
  {
    "rose-pine/neovim",
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        variant = 'moon',
        styles = {
          italic = false,
        },
        disable_italics = true,
      })
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup({
        disable_italics = true,
        italic = {
          strings = false,
          comments = false,
          operators = false,
          folds = false,
        },
      })
    end
  },
}
