-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false
vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/nvim/Scripts/python")
-- vim.g.molten_image_provider = "wezterm"
-- vim.g.molten_auto_open_output = false
vim.g.molten_auto_image_popup = true
vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
