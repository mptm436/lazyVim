-- Add customized LSP keymaps
return {
  "neovim/nvim-lspconfig",
  -- init = function()
  -- local keys = require("lazyvim.plugins.lsp.keymaps").get()
  -- -- change a keymap
  -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
  -- -- disable a keymap
  -- keys[#keys + 1] = { "K", false }
  -- -- add a keymap
  -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
  -- end,
  opts = {
    servers = {
      ruff_lsp = {
        -- mason = false, -- set to false if you don't want this server to be installed with mason
        -- Use this to add any additional keymaps
        -- for specific lsp servers
        ---@type LazyKeysSpec[]
        -- keys = {},
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
      ansiblels = {
        cmd = { "ansible-language-server", "--stdio" },
        settings = {
          ansible = {
            python = {
              interpreterPath = "python",
            },
            ansible = {
              path = "ansible",
            },
            executionEnvironment = {
              enabled = false,
            },
            validation = {
              enabled = true,
              lint = {
                enabled = true,
                path = "ansible-lint",
              },
            },
          },
        },
      },
    },
  },
}
