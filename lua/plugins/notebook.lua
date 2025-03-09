return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
    end,
  },
  {
    "jmbuhr/otter.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      image = {},
    },
  },
  {
    --TODO: Replace with Snacks.image when supported by Molten
    "3rd/image.nvim",
    -- enabled = vim.uv.os_uname().sysname ~= "Windows_NT",
    enabled = false,
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
      max_width = 1200, -- tweak to preference
      max_height = 100, -- ^
      max_height_window_percentage = math.huge, -- this is necessary for a good experience
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
