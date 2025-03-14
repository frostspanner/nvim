return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- { "echasnovski/mini.statusline", config = true },
  {
    "echasnovski/mini.statusline",
    enabled = false,
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    -- enabled = false,
    opts = {
      options = {
        theme = "gruvbox",
      },
    },
  },
}
