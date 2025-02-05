if vim.uv.os_uname().sysname == "Windows_NT" then
  return {}
else
  return {
    {
      "neovim/nvim-lspconfig",
      opts = function(_, opts)
        local ensure_installed = {}
        for server, server_opts in pairs(opts.servers) do
          if type(server_opts) == "table" and not ensure_installed[server] then
            server_opts.mason = false
          end
        end
      end,
    },
  }
end
