return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "seblj/roslyn.nvim",
      ft = "cs",
      opts = {
        -- your configuration comes here; leave empty for default settings
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        cs = { "csharpier" },
      },
      formatters = {
        csharpier = {
          command = "dotnet-csharpier",
          args = { "--write-stdout" },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "csharpier", "netcoredbg", "roslyn" } },
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   opts = function()
  --     local dap = require("dap")
  --     if not dap.adapters["netcoredbg"] then
  --       require("dap").adapters["netcoredbg"] = {
  --         type = "executable",
  --         command = vim.fn.exepath("netcoredbg"),
  --         args = { "--interpreter=vscode" },
  --         options = {
  --           detached = false,
  --         },
  --       }
  --     end
  --     for _, lang in ipairs({ "cs", "fsharp", "vb" }) do
  --       if not dap.configurations[lang] then
  --         dap.configurations[lang] = {
  --           {
  --             type = "netcoredbg",
  --             name = "Launch file",
  --             request = "launch",
  --             ---@diagnostic disable-next-line: redundant-parameter
  --             program = function()
  --               return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/", "file")
  --             end,
  --             cwd = "${workspaceFolder}",
  --           },
  --         }
  --       end
  --     end
  --   end,
  -- },
  {
    "mfussenegger/nvim-dap",
    init = function()
      vim.g.dotnet_build_project = function()
        local default_path = vim.fn.getcwd() .. "/"
        if vim.g["dotnet_last_proj_path"] ~= nil then
          default_path = vim.g["dotnet_last_proj_path"]
        end
        local path = vim.fn.input("Path to your *proj file", default_path, "file")
        vim.g["dotnet_last_proj_path"] = path
        local cmd = "dotnet build -c Debug " .. path
        print("")
        print("Cmd to execute: " .. cmd)
        local f = os.execute(cmd)
        if f == 0 then
          print("\nBuild: ✔️ ")
        else
          print("\nBuild: ❌ (code: " .. f .. ")")
        end
      end

      vim.g.dotnet_get_dll_path = function()
        local request = function()
          return vim.fn.input("Path to dll", vim.fs.joinpath(vim.fn.getcwd(), "bin", "debug", "net8.0"), "file")
        end

        if vim.g["dotnet_last_dll_path"] == nil then
          vim.g["dotnet_last_dll_path"] = request()
        else
          if
            vim.fn.confirm("Do you want to change the path to dll?\n" .. vim.g["dotnet_last_dll_path"], "&yes\n&no", 2)
            == 1
          then
            vim.g["dotnet_last_dll_path"] = request()
          end
        end

        return vim.g["dotnet_last_dll_path"]
      end
      local config = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            if vim.fn.confirm("Should I recompile first?", "&yes\n&no", 2) == 1 then
              vim.g.dotnet_build_project()
            end
            return vim.g.dotnet_get_dll_path()
          end,
          cwd = "${workspaceFolder}",
        },
      }
      local dap = require("dap")
      dap.adapters.coreclr = {
        type = "executable",
        command = vim.fs.joinpath(vim.fn.stdpath("data"), "mason", "packages", "netcoredbg", "netcoredbg")
          .. "/netcoredbg.exe",
        args = { "--interpreter=vscode" },
      }

      dap.configurations.cs = config
      dap.configurations.fsharp = config
    end,
  },
}
