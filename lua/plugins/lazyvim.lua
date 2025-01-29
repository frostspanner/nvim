return {
  {
    "LazyVim/LazyVim",
    rocks = { enabled = vim.uv.os_uname().sysname ~= "Windows_NT" },
  },
}
