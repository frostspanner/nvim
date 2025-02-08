if vim.uv.os_uname().sysname == "Windows_NT" then
  return {}
else
  return {
    { "williamboman/mason-lspconfig.nvim", enabled = false },
    { "williamboman/mason.nvim", enabled = false },
  }
end
