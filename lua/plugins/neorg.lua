if false then
  return {}
else
  return {
    {
      "nvim-neorg/neorg",
      lazy = false,
      version = "*",
      opts = {
        load = {
          ["core.completion"] = {
            config = { engine = { module_name = "external.lsp-completion" } },
          },
          -- default values
          -- ["external.query"] = {
          --   -- Populate the database. Indexing happens on a separate thread, so doesn't block
          --   -- neovim. Funny enough, this is the only user facing way to trigger a full index of your
          --   -- workspace at the moment
          --   index_on_launch = true,
          --
          --   -- Update the db entry when a file is written
          --   update_on_change = true,
          -- },
          ["core.defaults"] = {},
          ["core.ui.calendar"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.export"] = {},
          ["external.interim-ls"] = {},
        },
      },
      dependencies = {
        { "benlubas/neorg-interim-ls", config = true },
        -- "benlubas/neorg-query",
      },
    },
  }
end
